---@meta

--[[### Information of monitor.

]]
---@class Display
---@field id integer An unique ID of the monitor.
---@field scalefactor number Output device's pixel scale factor.
---@field internal boolean Whether this is an internal display.
---@field bounds RectF The display's bounds.
---@field workarea RectF The work area's bounds.
local Display = {}
return Display
