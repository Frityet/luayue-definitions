#!/usr/bin/env lua

--[[
    This file automatically generates LuaLS CATS annotations for the libyue library
]]

---@class json
---@field encode fun(value: any): string?
---@field decode fun(value: string): any?
local json = require("json")
local lfs = require("lfs")

--[[
These are more docs

```lua
self:is_a("code block")
```
]]
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
---@field enums { name: string }[]?
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
        return string.format("fun(%s): %s", table.concat(args, ', '), ret)
    end
end

---@param name string
---@param type string
---@param desc string?
---@return string
local function field(name, type, desc)
    return string.format("---@field %s %s %s", name, type, desc or "")
end

---@param name string
---@param type string
---@param desc string?
---@return string
local function param(name, type, desc)
    type = type:gsub("::", ".")
    return string.format("---@param %s %s %s", name, type, desc or "")
end

---@param type string
---@param desc string?
---@return string
local function return_t(type, desc)
    return string.format("---@return %s %s", type, desc or "")
end

---Generates a property definition for the given property
---@param wl fun(...)
---@param property APIDefinition.Property
---@param apiname string
local function generate_property(wl, property, apiname)
    print("Generating property definition for "..property.id)
    --Strip newline characters from the description
    property.description = property.description and property.description:gsub("\r\n", " "):gsub("\n", " ") or ""
    -- wl("---@field ", property.name, " ", property.type.name, " ", property.description)
    wl(field(property.name, property.type.name, property.description))
end

---Generates a event definition for the given event
---@param wl fun(...)
---@param event APIDefinition.MethodSignature
---@param apiname string
local function generate_event(wl, event, apiname)
    print("Generating event definition for "..event.id)
    event.description = event.description and event.description:gsub("\r\n", " "):gsub("\n", " ") or ""
    ---@type string[]
    local params = {}
    for _, param in ipairs(event.signature.parameters) do
        params[#params+1] = param.name..(param.type and (": "..param.type.name) or "")
    end

    -- wl("---@field ", event.signature.name, " fun(", params_str, "): ", event.signature.returnType and event.signature.returnType.name or "nil", " ", event.description)
    wl(field(event.signature.name, fun(table.unpack(params))(event.signature.returnType and event.signature.returnType.name or "nil"), event.description))
end

---Generates a method definition for the given method
---@param wl fun(...)
---@param method APIDefinition.MethodSignature
---@param apiname string
---@param class_method boolean
local function generate_method(wl, method, apiname, class_method)
    print("Generating method definition for "..method.id..":"..method.signature.name.." in "..apiname)

    local sep = class_method and "." or ":"
    local sig = method.signature
    local params = {}
    for _, param in ipairs(sig.parameters) do
        params[#params+1] = param.name..(param.type and (" "..param.type.name) or "")
    end
    -- params_str = table.concat(params, ", ")

    local ret = sig.returnType and sig.returnType.name or "nil"

    wl("--[[", method.description, "]]")

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
        params[#params+1] = param.name
    end
    params_str = table.concat(params, ", ")
    wl("function ", apiname, sep, sig.name, "(", params_str, ") end")
end

---Generates standard LuaLanguageServer (CATS) annotations for the libyue library
---@param api APIDefinition
---@param to string
---@return boolean, thread | string
local function generate_cats_defintion(api, to)
    local f = io.open(to, "w+")
    if not f then return false, "Failed to open "..to end

    print("Generating CATS definition for "..api.name.." to "..to)
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
            wl("---@alias ", api.name)
            for _, enum in ipairs(api.enums) do
                --First, remove the quotes from the enum name
                wl("---| ", enum.name)
            end
            return
        end

        api.detail = api.detail or ""
        --If there is any C++ or JS code in the detail, remove the block
        api.detail = api.detail:gsub("```cpp.-```", ""):gsub("```js.-```", "")

        wl("--[[### ", api.description, "\n\n", api.detail, "]]")
        if api.name:find("%.") then
            local class, sub = api.name:match("(.+)%.(.+)")
            wl("---@class ", class, ".", sub, (api.inherit and " : "..api.inherit.name or ""))
            if api.properties then
                for _, property in ipairs(api.properties) do
                    generate_property(wl, property, api.name)
                    yield()
                end
                nl()
            end
            wl(class, ".", sub, " = {}")
        else
            wl("---@class ", api.name, (api.inherit and " : "..api.inherit.name or ""))
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
                    generate_event(wl, delegate, api.name)
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

local cwd = lfs.currentdir()
for api_file in lfs.dir(cwd.."/api") do
    if api_file == "." or api_file == ".." then goto next end
    local path = cwd.."/api/"..api_file
    ---@type APIDefinition
    local api do
        local f = io.open(path, "r")
        if not f then error("Failed to open "..path) end
        print("Reading "..path)
        api = json.decode(f:read("*a"))

        --replace :: with . for the name
        api.name = api.name:gsub("::", ".")


        f:close()
    end
    if api ~= nil then apis[#apis+1] = api end

    ::next::
end

--We multithreading (coroutines) this!

local threads = {}

for _, api in ipairs(apis) do
    local ok, err = generate_cats_defintion(api, cwd.."/yue/"..api.name..".lua")
    if not ok then error(err) end
    threads[#threads+1] = err
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

--Generate the last yue/gui.lua file, which will require all the other files and return the yue module
local f = io.open(cwd.."/yue/gui.lua", "w+")
if not f then error("Failed to open "..cwd.."/yue/gui.lua") end

f:write("---@meta\n")
f:write("---@class yue.gui\n")
for _, api in ipairs(apis) do
    f:write("---@field ", api.name, ' ', api.name, "\n")
end
f:write("local yue = {}\n")
f:write("return yue\n")
