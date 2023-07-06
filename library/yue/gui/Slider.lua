---@meta

--[[# Slider

### A slider bar for selecting numerical value.

### Details

The default range is between `0` and `100`.
[API Documentation](https://libyue.com/docs/latest/lua/api/slider.html#)
]]
---@class nu.Slider : nu.View
---@field onvaluechange (fun(self: nu.Slider): nil) | nu.Signal Emitted when user is changing the slider.
---@field onslidingcomplete (fun(self: nu.Slider): nil) | nu.Signal Emitted when user releases the slider.
local Slider = {}
--[[## Create a new `Slider` view.



]]
---@return nu.Slider
function Slider.create() end

--[[## Set the value.



]]
---@param value number
---@return nil
function Slider:setvalue(value) end

--[[## Return the value.



]]
---@return number
function Slider:getvalue() end

--[[## Set the step value of the slider.



]]
---@param step number
---@return nil
function Slider:setstep(step) end

--[[## Return the step value of the slider.



]]
---@return number
function Slider:getstep() end

--[[## Set the range of the slider.



]]
---@param min number
---@param max number
---@return nil
function Slider:setrange(min, max) end

--[[## Return the range of the slider.



]]
---@return nu.std.tuple
function Slider:getrange() end

return Slider
