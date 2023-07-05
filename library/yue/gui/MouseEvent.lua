---@meta

--[[# MouseEvent

### Mouse event.

### Detail

[API Documentation](https://libyue.com/docs/latest/lua/api/mouseevent.html#)
]]
---@class nu.MouseEvent : nu.Event
---@field button integer The mouse button being pressed, `1` is for left button, `2` is for right button, `3` is for middle button. 
---@field positioninview nu.PointF Relative position inside the view where the event happened.
---@field positioninwindow nu.PointF Relative position inside the window.
local MouseEvent = {}
return MouseEvent
