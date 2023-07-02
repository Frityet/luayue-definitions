#!/usr/bin/env lua

--[[
    This file automatically generates LuaLS CATS annotations for the libyue library
]]

---@class json
---@field encode fun(value: any): string?
---@field decode fun(value: string): any?
local json = require("json")
local path = require("path")

local unpack = table.unpack or unpack

local written = {
    functions = 0,
    events = 0,
    properties = 0,
}

---@param prog string
---@param ... string
---@return string?
---@return string?
local function exec(prog, ...)
    local cmd = string.format("%s %s", prog, table.concat({...}, " "))
    local f, err = io.popen(cmd)
    if not f then return nil, err end

    local ret = f:read("*a")
    if not f:close() then return nil, ret end
    return ret
end

---Keywords cannot be symbol names, so we need to add an underscore
---@type { [string] : string }
local KEYWORDS = {
    ["end"]     = "_end",
    ["function"]= "_function",
    ["local"]   = "_local",
    ["return"]  = "_return",
    ["for"]     = "_for",
    ["in"]      = "_in",
    ["repeat"]  = "_repeat",
    ["until"]   = "_until",
    ["if"]      = "_if",
    ["then"]    = "_then",
    ["elseif"]  = "_elseif",
    ["else"]    = "_else"
}

setmetatable(KEYWORDS, {
    __index = function (self, key) return rawget(self, key) or key end
})


---These cannot be prefixed with an underscore
---@type { [string] : string }
local TYPES = {
    ["nil"]     = "nil",
    ["boolean"] = "boolean",
    ["number"]  = "number",
    ["integer"] = "integer",
    ["string"]  = "string",
    ["table"]   = "table",
    ["function"]= "function",
    ["thread"]  = "thread",
    ["userdata"]= "userdata",
    ["any"]     = "any"
}

setmetatable(TYPES, {
    ---@param self { [string] : string }
    ---@param key string
    ---@return string
    __index = function (self, key)
        if key:sub(1, 1) == '(' or key:sub(1, 2) == "nu" then return key end

        return rawget(self, key) or ("nu."..key:gsub("::", "."))
    end
})

---@alias APIDefinition.Platform
---| "Windows"
---| "Linux"
---| "macOS"

---@class APIDefinition.Type
---@field name string
---@field id string?

---@class APIDefinition.ClassMethodSignature
---@field returnType APIDefinition.Type
---@field name string
---@field parameters { type: APIDefinition.Type, name: string }[]
---@field shortStr string
---@field str string

---@class APIDefinition.MethodSignature
---@field signature APIDefinition.ClassMethodSignature
---@field description string
---@field detail string?
---@field platform APIDefinition.Platform[]?
---@field id string

---@class APIDefinition.Property : APIDefinition.Type
---@field description string?
---@field type APIDefinition.Type

---@class APIDefinition : APIDefinition.Type
---@field component string
---@field header string
---@field type string
---@field namespace string
---@field inherit APIDefinition.Type?
---@field description string
---@field detail string
---@field properties APIDefinition.Property[]?
---@field enums { name: string, description: string? }[]?
---@field class_methods APIDefinition.MethodSignature[]?
---@field methods APIDefinition.MethodSignature[]?
---@field events APIDefinition.MethodSignature[]?
---@field delegates APIDefinition.MethodSignature[]?
---@field module string

local yield = coroutine.yield

---@param ... string
---@return fun(ret: string): string
local function fun(...)
    local args = {...}
    return function (ret)
        return string.format("(fun(%s): %s)", table.concat(args, ', '), ret)
    end
end

---@param text string?
---@return string
local function one_line(text) return text and (text:gsub("\r\n", " "):gsub("\n", " ")) or "" end

---@param text string
---@return string
local function markdown_alert(text)
    local start = ("| ❗ %s ❗ |"):format(text)
    local fin = ('|'..('-'):rep(#start-3).."|\n")

    return start..'\n'..fin
end

---@param text string?
---@return string
local function detail(text)
    if not text then return ""
    else return "### Details\n\n"..text.."" end
end

local URL_FMT = "https://libyue.com/docs/latest/lua/api/%s.html#%s"

---@param module string
---@param sub string?
---@return string
local function api_url(module, sub) return URL_FMT:format(module:lower(), sub or "") end

---@param module string
---@param method string
---@param param_names string[]?
---@return string
local function method_api_url(module, method, param_names)
    param_names = #param_names > 0 and param_names or nil
    local name = method..(param_names and ("-"..table.concat(param_names, "-")) or "")
    return api_url(module, name)
end

---@param name string
---@param type string
---@param desc string?
---@return string
local function field(name, type, desc)
    return string.format("---@field %s %s %s", KEYWORDS[name], TYPES[type], one_line(desc))
end

---@param name string
---@param type string
---@param desc string?
---@return string
local function param(name, type, desc)
    type = type:gsub("::", ".")
    return string.format("---@param %s %s %s", KEYWORDS[name], TYPES[type], one_line(desc))
end

---@param type string
---@param desc string?
---@return string
local function return_t(type, desc)
    return string.format("---@return %s %s", TYPES[type], one_line(desc))
end

---Generates a property definition for the given property
---@param wl fun(...)
---@param property APIDefinition.Property
---@param apiname string
local function generate_property(wl, property, apiname)
    --Strip newline characters from the description
    property.description = one_line(property.description)
    wl(field(property.name, property.type.name, property.description))
    print(string.format("\x1b[32mGenerated \x1b[35mproperty \x1b[36m%s.\x1b[34m%s\x1b[0m", apiname, property.name))
    written.properties = written.properties + 1
end

---Generates a event definition for the given event
---@param wl fun(...)
---@param event APIDefinition.MethodSignature
---@param apiname string
local function generate_event(wl, event, apiname)
    event.description = one_line(event.description)
    ---@type string[]
    local params = {}
    for _, param in ipairs(event.signature.parameters) do
        params[#params+1] = param.name..(param.type and (": "..TYPES[param.type.name]) or "")
    end

    wl(field(event.signature.name, fun(unpack(params))(event.signature.returnType and event.signature.returnType.name or "nil"), "| yue.gui.Signal "..event.description))
    print(string.format("\x1b[32mGenerated \x1b[35mevent \x1b[36m%s.\x1b[34m%s\x1b[0m", apiname, event.signature.name))
    written.events = written.events + 1
end

---Generates a event definition for the given event
---@param wl fun(...)
---@param delegate APIDefinition.MethodSignature
---@param apiname string
local function generate_delegate(wl, delegate, apiname)
    delegate.description = one_line(delegate.description)
    ---@type string[]
    local params = {}
    for _, param in ipairs(delegate.signature.parameters) do
        params[#params+1] = param.name..(param.type and (": "..TYPES[param.type.name]) or "")
    end

    wl(field(delegate.signature.name, fun(unpack(params))(delegate.signature.returnType and delegate.signature.returnType.name or "nil"), delegate.description))
    print(string.format("\x1b[32mGenerated \x1b[35mdelegate \x1b[36m%s.\x1b[34m%s\x1b[0m", apiname, delegate.signature.name))
    written.events = written.events + 1
end

---Generates a method definition for the given method
---@param wl fun(...)
---@param method APIDefinition.MethodSignature
---@param apiname string
---@param class_method boolean
local function generate_method(wl, method, apiname, class_method)
    local sep = class_method and "." or ":"
    local sig = method.signature
    local params = {}
    for _, param in ipairs(sig.parameters) do
        params[#params+1] = KEYWORDS[param.name]..(param.type and (" "..param.type.name) or "")
    end
    -- params_str = table.concat(params, ", ")

    local ret = sig.returnType and sig.returnType.name or "nil"

    ---@type string?
    local plats do
        if method.platform then
            plats = markdown_alert("This method is only available on the following platforms: "..table.concat(method.platform, ", "))
        end
    end

    local param_names do
        if #params > 0 then
            param_names = {}
            for _, param in ipairs(sig.parameters) do
                param_names[#param_names+1] = param.name
            end
        end
    end

    wl("--[[## ", method.description, "\n\n",
        plats or "",
        detail(method.detail), "\n\n",
        -- "[API Documentation]("..method_api_url(apiname, sig.name, param_names)..")\n",
    "]]")

    --Params are one after the other, like this
    --[[
        ---@param param1 string
        ---@param param2 number
    ]]
    for _, prm in ipairs(sig.parameters) do
        wl(param(prm.name, prm.type and prm.type.name or "any"))
    end
    wl(return_t(ret))

    --For the actual function definition, we must remove the (: <TYPE>) from the parameters
    params = {}
    for _, param in ipairs(sig.parameters) do
        params[#params+1] = KEYWORDS[param.name]
    end
    params_str = table.concat(params, ", ")
    wl("function "..apiname..sep..sig.name.."("..params_str..") end")

    io.write("\x1b[32mGenerated \x1b[35m"..(class_method and "class method" or "method").." \x1b[36m"..apiname..sep.."\x1b[34m"..sig.name.."\x1b[0m")
    io.write("\x1b[0m(")
    for i, prm in ipairs(sig.parameters) do
        io.write("\x1b[34m"..KEYWORDS[prm.name].."\x1b[0m: \x1b[36m"..(prm.type and TYPES[prm.type.name] or "any"))
        if i ~= #sig.parameters then io.write(", ") end
    end
    io.write("\x1b[0m)")
    io.write(": \x1b[36m"..(sig.returnType and TYPES[sig.returnType.name] or "nil"))
    io.write("\x1b[0m\n")
    written.functions = written.functions + 1
end

---Generates standard LuaLanguageServer (CATS) annotations for the libyue library
---@param api APIDefinition
---@param to Path
---@return boolean, thread | string
local function generate_cats_defintion(api, to)
    local f, err = to:create("file", "w+")
    if not f then return false, "Failed to open "..tostring(to) end
    --[[@cast f file*]]

    print("\x1b[33mGenerating CATS definition for \x1b[36m"..api.name.."\x1b[33m to \x1b[36m"..tostring(to).."\x1b[0m")
    return true, coroutine.create(function ()
        local function wl(...)
            local args = {...}
            for i = 1, #args do f:write(args[i]) end
            return f:write('\n')
        end

        local function nl() return f:write('\n') end

        wl("---@meta")
        nl()
        yield()

        --- If its an enum, we just need to generate the enum definition
        if api.enums then
            wl("---@alias ", TYPES[api.name])
            for _, enum in ipairs(api.enums) do
                wl("---| ", enum.name, (" "..one_line(enum.description)) or "")
            end
            return
        end

        api.detail = detail(api.detail)
        --If there is any C++ or JS code in the detail, remove the block
        api.detail = api.detail:gsub("```cpp.-```", ""):gsub("```js.-```", "")

        --Colors can also be represented in a hex string
        if api.name == "Color" then api.inherit = { name = "string" } end

        wl("--[[# ", api.name, "\n\n",
                "### ", api.description, "\n\n",
                "### Detail\n\n",
                api.detail,
                "[API Documentation]("..api_url(api.name)..")\n",
                "]]")
        if api.name:find("%.") then
            local class, sub = api.name:match("(.+)%.(.+)")
            wl("---@class ", TYPES[class], ".", sub, (api.inherit and " : "..TYPES[api.inherit.name] or ""))
            if api.properties then
                for _, property in ipairs(api.properties) do
                    generate_property(wl, property, api.name)
                    yield()
                end
                nl()
            end
            wl(class, ".", sub, " = {}")
        else
            wl("---@class ", TYPES[api.name], (api.inherit and " : "..TYPES[api.inherit.name] or ""))
            if api.properties then
                for _, property in ipairs(api.properties) do
                    generate_property(wl, property, api.name)
                    yield()
                end
            end

            if api.events then
                --Events must be registered as fields to the class in the format
                --[[
                    ---@field <EVENT_NAME> fun(<PARAMS>): (<RETURN> | nil) <DESCRIPTION>
                ]]
                for _, event in ipairs(api.events) do
                    generate_event(wl, event, api.name)
                    yield()
                end
            end

            if api.delegates then
                for _, delegate in ipairs(api.delegates) do
                    generate_delegate(wl, delegate, api.name)
                    yield()
                end
            end

            wl("local ", api.name, " = {}")
        end
        yield()

        if api.class_methods then
            for _, method in ipairs(api.class_methods) do
                generate_method(wl, method, api.name, true)
                nl()
                yield()
            end
        end

        if api.methods then
            for _, method in ipairs(api.methods) do
                generate_method(wl, method, api.name, false)
                nl()
                yield()
            end
        end

        wl("return ", api.name)
        return true
    end)
end

---@type APIDefinition[]
local apis = {}

local yue_dir = path "./yue/gui"

local api_dir = path "./api"

local ok, err = exec("git", "submodule", "update", "--remote", "--recursive", "--force")
if not ok then error(err) end

for file in (api_dir/"docs"/"latest"/"lua"/"api"):entries() do
    if file:type() == "directory" or file:extension() ~= "json" then goto next end

    print("\x1b[33mReading \x1b[36m"..tostring(file))
    local res, err = file:read_all()
    if not res then error(err) end
    ---@type APIDefinition
    local api = json.decode(res)

    --replace :: with . for the name
    api.name = api.name:gsub("::", ".")

    if api ~= nil then apis[#apis+1] = api end

    ::next::
end

--We multithreading (coroutines) this!
local threads = {}

for _, api in ipairs(apis) do
    local ok, thread = generate_cats_defintion(api, yue_dir/(api.name..".lua"))
    if ok then threads[#threads+1] = thread
    else error("Could not generate CATS definition for "..api.name..": "..thread.."\n") end
end

local done = false
while not done do
    for i = 1, #threads do
        coroutine.resume(threads[i])
        if coroutine.status(threads[i]) == "dead" then
            table.remove(threads, i)
            break
        end
    end

    if #threads == 0 then done = true end
end

-- --Generate the last yue/gui.lua file, which will require all the other files and return the yue module
local f, err = (yue_dir/"init.lua"):create("file", "w+")
if not f then error("Failed to open "..tostring(yue_dir/"init.lua")..": "..err) end
--[[@cast f file*]]

f:write("---@meta\n")
f:write("---@class yue.gui\n")
for _, api in ipairs(apis) do
    f:write("---@field ", api.name, ' ', TYPES[api.name], "\n")
end

f:write("local yue = {}\n")
f:write("return yue\n")

f:close()

print("\x1b[32mDone!\x1b[0m")
print("\x1b[1;33mInfo:\x1b[0m")
print("\t- \x1b[1;32m"..#apis.."\x1b[33m APIs were parsed\x1b[0m")
print("\t\t- \x1b[1;32m"..written.functions.."\x1b[33m functions\x1b[0m")
print("\t\t- \x1b[1;32m"..written.properties.."\x1b[33m properties\x1b[0m")
print("\t\t- \x1b[1;32m"..written.events.."\x1b[33m events\x1b[0m")

local ok, err = exec("du", "-sh", tostring(yue_dir))
if not ok then return end

local kb_used = ok:match("(%d+)K")

print("\t- \x1b[1;32m"..kb_used.."KB\x1b[33m of disk space was used\x1b[0m")
