---@meta

--[[
Application lifetime.
This class does system GUI toolkit intializations, and provides APIs around
native GUI toolkit's application lifetime APIs. You should not use this API
when integrating Yue into existing GUI apps.

When using this class, you must create `Lifetime` before creating `State`.
]]
---@class Lifetime
---@field onready fun(): nil Emitted when received `applicationDidFinishLaunching` notification. 
---@field onactivate fun(): nil Emitted when received `applicationShouldHandleReopen` notification and there is no visible windows. This usually happens when the app is activated by Finder, or user clicks on the dock icon. 
---@field openfiles fun(files: table): Lifetime::Reply Called when received message to open files.
local Lifetime = {}
return Lifetime
