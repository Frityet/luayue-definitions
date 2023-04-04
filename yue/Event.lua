---@meta

---Generic input event type.
---@class Event
---@field type EventType
---@field modifiers integer
---@field timestamp integer

local Event = {}
---Return whether <kbd>Shift</kbd> key is pressed.
---@return boolean
function Event.isshiftpressed() end

---Return whether <kbd>Control</kbd> key is pressed.
---@return boolean
function Event.iscontrolpressed() end

---Return whether <kbd>Alt</kbd> key is pressed.
---@return boolean
function Event.isaltpressed() end

---Return whether <kbd>Win</kbd> or <kbd>Command</kbd> key is pressed. 
---@return boolean
function Event.ismetapressed() end

return Event
