---@meta

---A view displays date and time with editing ability.
---@class DatePicker : View
local DatePicker = {}
---Set the selected date to `time`.
---@param time number
---@return nil
function DatePicker:setdate(time) end

---Get the selected date.
---@return number
function DatePicker:getdate() end

---Set the `minimum` and `maximum` date values.
---@param minimum number, maximum number
---@return nil
function DatePicker:setrange(minimum, maximum) end

---Return  the `minimum` and `maximum` date values.
---@return std::tuple
function DatePicker:getrange() end

---Return whether there is a stepper attached to the text field.
---@return boolean
function DatePicker:hasstepper() end

return DatePicker
