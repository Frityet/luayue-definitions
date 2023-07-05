---@meta

--[[# Display

### Information of monitor.


[API Documentation](https://libyue.com/docs/latest/lua/api/display.html#)
]]
---@class nu.Display
---@field id integer An unique ID of the monitor.
---@field scalefactor number Output device's pixel scale factor.
---@field internal boolean Whether this is an internal display.
---@field bounds nu.RectF The display's bounds.
---@field workarea nu.RectF The work area's bounds.
local Display = {}
return Display
