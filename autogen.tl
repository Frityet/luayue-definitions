
--[[
    Automatically generates .d.tl files for the libyue library
]]


local json = require("json")
local lfs = require("lfs")

local record APIDefinition
    record Type
        name: string
        id: string | nil
    end

    record EnumMember
        name: string
    end

    record ClassMethodSignature
        record NamedType
            type: Type
            name: string
        end

        returnType: Type
        name: string
        parameters: {NamedType}
        shortStr: string
        str: string
    end

    record MethodSignature
        signature: ClassMethodSignature
        description: string
        id: string
    end

    record Property
        name: string
        id: string | nil
        description: string | nil
        type: Type
    end

    name: string
    id: string | nil
    component: string
    module: string
    header: string
    type: string
    namespace: string
    inherit: Type | nil
    description: string
    detail: string
    properties: {Property} | nil
    enums: {EnumMember} | nil
    class_methods: {MethodSignature} | nil
    methods: {MethodSignature} | nil
    events: {MethodSignature} | nil
    delegates: {MethodSignature} | nil
end

local function generate_teal_definition(api: APIDefinition, to: string): boolean, string | function()
    local f = io.open(to, "w")
    if not f then return false, "Failed to open "..to end

    return true, function()
        local function wl(...: any): FILE, string
            local args = {...}
            for _, v in ipairs(args) do
                f:write(tostring(v))
            end
            return f:write("\n")
        end

        local function nl(): FILE, string return f:write("\n") end

        wl("local record ", api.name)
    end
end

local cwd = lfs.currentdir()
local path = cwd.."/api/"
local apis: {APIDefinition} = {}
for file in lfs.dir(path) do
    local path = path..file
    if file == "." or file == "" then goto next end

    local f = io.open(path, "r")
    if not f then error("Failed to open "..path) end
    print("Reading "..path)
    local data: APIDefinition = json.decode((f:read("*a")))
    --Replace :: with . in the name
    data.name = data.name:gsub("::", ".")
    f:close()

    apis[#apis+1] = data
    ::next::
end

local threads: {thread} = {}

for _, api in ipairs(apis) do

end
