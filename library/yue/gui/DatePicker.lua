---@meta

--[[# DatePicker

### A view displays date and time with editing ability.

### Detail

[API Documentation](https://libyue.com/docs/latest/lua/api/datepicker.html#)
]]
---@class nu.DatePicker : nu.View
---@field ondatechange (fun(self: nu.DatePicker): nil) | yue.gui.Signal Emitted when the selected date has been changed.
local DatePicker = {}
--[[## Create a new `DatePicker` with `options`.



]]
---@param options nu.DatePicker.Options 
---@return nu.DatePicker 
function DatePicker.create(options) end

--[[## Set the selected date to `time`.



]]
---@param time number 
---@return nil 
function DatePicker:setdate(time) end

--[[## Get the selected date.



]]
---@return number 
function DatePicker:getdate() end

--[[## Set the `minimum` and `maximum` date values.



]]
---@param minimum number 
---@param maximum number 
---@return nil 
function DatePicker:setrange(minimum, maximum) end

--[[## Return  the `minimum` and `maximum` date values.



]]
---@return nu.std.tuple 
function DatePicker:getrange() end

--[[## Return whether there is a stepper attached to the text field.



]]
---@return boolean 
function DatePicker:hasstepper() end

return DatePicker
