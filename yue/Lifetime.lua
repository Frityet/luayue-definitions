---@meta

---Application lifetime.
---@class Lifetime
---@field onready fun(): nil Emitted when received `applicationDidFinishLaunching` notification. 
---@field onactivate fun(): nil Emitted when received `applicationShouldHandleReopen` notification and there is no visible windows. This usually happens when the app is activated by Finder, or user clicks on the dock icon. 
local Lifetime = {}
---Called when received message to open files.
---@param files table
---@return Lifetime::Reply
function Lifetime:openfiles(files) end

return Lifetime
