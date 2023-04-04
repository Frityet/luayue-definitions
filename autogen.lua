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
    {
  "name": "RectF",
  "header": "nativeui/gfx/geometry/rect_f.h",
  "type": "table",
  "namespace": "nu",
  "description": "Rectangle type.",
  "detail": "This type defines a simple integer rectangle class. The containment semantics\nare array-like; that is, the coordinate (x, y) is considered to be\ncontained by the rectangle, but the coordinate (x + width, y) is not.\n\nThis type is represented by a table with `x`, `y`, `width`, `height`\nproperties.\n\n```lua\nwindow:setbounds{x=11, y=24, width=100, height=100}\n```\n\nWhen a function accepts `RectF` as its last parameter, you can simply\nunpack the properties:\n\n```lua\nwindow:setbounds(11, 24, 100, 100)\n```\n",
  "properties": [
    {
      "description": "X coordinate.",
      "id": "x",
      "type": {
        "name": "number"
      },
      "name": "x"
    },
    {
      "description": "Y coordinate.",
      "id": "y",
      "type": {
        "name": "number"
      },
      "name": "y"
    },
    {
      "description": "Rectangle width.",
      "id": "width",
      "type": {
        "name": "number"
      },
      "name": "width"
    },
    {
      "description": "Rectangle height.",
      "id": "height",
      "type": {
        "name": "number"
      },
      "name": "height"
    }
  ],
  "id": "rectf"
}
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

---Generates a property definition for the given property
---@param wl fun(...)
---@param property APIDefinition.Property
---@param apiname string
local function generate_property(wl, property, apiname)
    print("Generating property definition for "..property.id)
    wl("---@field ", property.name, " ", property.type.name)
end

---Generates a method definition for the given method
---@param wl fun(...)
---@param method APIDefinition.MethodSignature
---@param apiname string
local function generate_method(wl, method, apiname)
    print("Generating method definition for "..method.id..":"..method.signature.name.." in "..apiname)
    local sig = method.signature
    local params = {}
    for _, param in ipairs(sig.parameters) do
        params[#params+1] = param.name..(param.type and (" "..param.type.name) or "")
    end
    params_str = table.concat(params, ", ")

    local ret = sig.returnType and sig.returnType.name or "nil"

    --We need to remove the newlines from the description
    method.description = method.description:gsub("\r\n", " "):gsub("\r", " "):gsub("\n", " ")
    wl("---", method.description)
    if params_str ~= "" then
        wl("---@param ", params_str)
    end
    wl("---@return ", ret)

    --For the actual function definition, we must remove the (: <TYPE>) from the parameters
    params = {}
    for _, param in ipairs(sig.parameters) do
        params[#params+1] = param.name
    end
    params_str = table.concat(params, ", ")
    wl("function ", apiname, ":", sig.name, "(", params_str, ") end")
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

        -- First, the description, we must remove the newlines from the description
        api.description = api.description:gsub("\r\n", " "):gsub("\r", " "):gsub("\n", " ")
        wl("---", api.description)


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
                nl()
            end
            wl("local ", api.name, " = {}")
        end
        yield()

        if api.methods then
            for _, method in ipairs(api.methods) do
                generate_method(wl, method, api.name)
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
repeat
    for i = 1, #threads do
        coroutine.resume(threads[i])
        if coroutine.status(threads[i]) == "dead" then
            table.remove(threads, i)
            break
        end
    end
    if #threads == 0 then done = true end
until done

--Generate the last yue/gui.lua file, which will require all the other files and return the yue module
local f = io.open(cwd.."/yue/gui.lua", "w+")
if not f then error("Failed to open "..cwd.."/yue/gui.lua") end

f:write("---@meta\n")
f:write("---@class yue.gui\n")
for _, api in ipairs(apis) do
    f:write("---@field ", api.name, api.name, "\n")
end
f:write("local yue = {}\n")
f:write("return yue\n")
