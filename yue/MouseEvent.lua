---@meta

--[[
Mouse event.
]]
---@class MouseEvent : Event
---@field button integer The mouse button being pressed, `1` is for left button, `2` is for right button, `3` is for middle button. 
---@field positioninview PointF Relative position inside the view where the event happened.
---@field positioninwindow PointF Relative position inside the window.
local MouseEvent = {}
return MouseEvent
