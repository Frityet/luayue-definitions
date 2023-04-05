---@meta

--[[This class does system GUI toolkit intializations, and provides APIs around
native GUI toolkit's application lifetime APIs. You should not use this API
when integrating Yue into existing GUI apps.

When using this class, you must create `Lifetime` before creating `State`.
]]
---Application lifetime.
---@class Lifetime 
---@field onready fun() 
---@field onactivate fun() 
---@field openfiles fun(files: table): Lifetime::Reply 
local Lifetime = {}
return Lifetime
