---@meta

--[[# Screen

### Receive information about system’s monitor or screen.

#### Details


This class can not be created by user, you can only receive its global
instance from the `screen` property of the module:

```lua
gui.screen:getprimarydisplay()
```

[API Documentation](https://libyue.com/docs/latest/lua/api/screen.html#)
]]
---@class nu.Screen
---@field onadddisplay (fun(display: nu.Display): nil) | nu.Signal Emitted when a new `display` is available.
---@field onremovedisplay (fun(display: nu.Display): nil) | nu.Signal Emitted when the `display` has been removed.
---@field onupdatedisplay (fun(display: nu.Display): nil) | nu.Signal Emitted when there are changes happened to `display`.
local Screen = {}
--[[## Return the primary display.



]]
---@return nu.Display
function Screen:getprimarydisplay() end

--[[## Return the list of displays that are currently available.



]]
---@return table
function Screen:getalldisplays() end

--[[## Return the display nearest the specified `window`.



]]
---@param window nu.Window
---@return nu.Display
function Screen:getdisplaynearestwindow(window) end

--[[## Return the display nearest the specified DIP `point`.



]]
---@param point nu.PointF
---@return nu.Display
function Screen:getdisplaynearestpoint(point) end

--[[## Return the current absolute position of the mouse pointer.



]]
---@return nu.PointF
function Screen:getcursorscreenpoint() end

return Screen
