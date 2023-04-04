---@meta

---A slider bar for selecting numerical value.
---@class Slider : View
local Slider = {}
---Set the value.
---@param value number
---@return nil
function Slider:setvalue(value) end

---Return the value.
---@return number
function Slider:getvalue() end

---Set the step value of the slider.
---@param step number
---@return nil
function Slider:setstep(step) end

---Return the step value of the slider.
---@return number
function Slider:getstep() end

---Set the range of the slider.
---@param min number, max number
---@return nil
function Slider:setrange(min, max) end

---Return the range of the slider.
---@return std::tuple
function Slider:getrange() end

return Slider
