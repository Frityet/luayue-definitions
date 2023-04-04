---@meta

---Application lifetime.
---@class Lifetime
local Lifetime = {}
---Emitted when received `applicationDidFinishLaunching` notification. 
---@return nil
function Lifetime:onready() end

---Emitted when received `applicationShouldHandleReopen` notification and there is no visible windows. This usually happens when the app is activated by Finder, or user clicks on the dock icon. 
---@return nil
function Lifetime:onactivate() end

---Called when received message to open files.
---@param files table
---@return Lifetime::Reply
function Lifetime:openfiles(files) end

return Lifetime
