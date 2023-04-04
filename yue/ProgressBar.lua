---@meta

---Horizontal bar showing progress.
---@class ProgressBar : View
local ProgressBar = {}
---Set the percent value between `0` and `100.0`.
---@param percent number
---@return nil
function ProgressBar:setvalue(percent) end

---Return the percent value between `0` and `100.0`.
---@return number
function ProgressBar:getvalue() end

---Set whether the progress bar is indeterminate.
---@param indeterminate boolean
---@return nil
function ProgressBar:setindeterminate(indeterminate) end

---Return whether the progress bar is indeterminate.
---@return boolean
function ProgressBar:isindeterminate() end

return ProgressBar
