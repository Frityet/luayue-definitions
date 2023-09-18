---@meta

--[[# Event

### Generic input event type.


[API Documentation](https://libyue.com/docs/latest/lua/api/event.html#)
]]
---@class nu.Event
---@field type nu.EventType The type of the event.
---@field modifiers integer A bit array of keyboard modifiers of the event.
---@field timestamp integer Time when event was created, starts from when machine was booted.
local Event = {}
--[[## Return whether <kbd>Shift</kbd> key is pressed.



]]
---@return boolean
function Event.isshiftpressed() end

--[[## Return whether <kbd>Control</kbd> key is pressed.



]]
---@return boolean
function Event.iscontrolpressed() end

--[[## Return whether <kbd>Alt</kbd> key is pressed.



]]
---@return boolean
function Event.isaltpressed() end

--[[## Return whether <kbd>Win</kbd> or <kbd>Command</kbd> key is pressed.




]]
---@return boolean
function Event.ismetapressed() end

--[[## Return current mouse location in screen.



]]
---@return nu.PointF
function Event.getmouselocation() end

return Event
