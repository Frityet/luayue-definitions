---@meta

--[[
This class can not be created by user, you can only receive its global
instance from the `appearance` property of the module:

```lua
gui.appearance:isdarkscheme()
```
]]
---Information about user's appearance preferences.
---@class Appearance 
---@field oncolorschemechange fun() 
local Appearance = {}
--[[Enable Windows 10 dark mode for current app.]]
---@param enable boolean 
---@return nil 
function Appearance:setdarkmodeenabled(enable) end

--[[Return whether this app is using a dark color scheme.]]
---@return boolean 
function Appearance:isdarkscheme() end

return Appearance
