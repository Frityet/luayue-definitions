---@meta

--[[# ProgressBar

### Horizontal bar showing progress.


[API Documentation](https://libyue.com/docs/latest/lua/api/progressbar.html#)
]]
---@class nu.ProgressBar : nu.View
local ProgressBar = {}
--[[## Create a new `ProgressBar`.



]]
---@return nu.ProgressBar
function ProgressBar.create() end

--[[## Set the percent value between `0` and `100.0`.



]]
---@param percent number
---@return nil
function ProgressBar:setvalue(percent) end

--[[## Return the percent value between `0` and `100.0`.



]]
---@return number
function ProgressBar:getvalue() end

--[[## Set whether the progress bar is indeterminate.



]]
---@param indeterminate boolean
---@return nil
function ProgressBar:setindeterminate(indeterminate) end

--[[## Return whether the progress bar is indeterminate.



]]
---@return boolean
function ProgressBar:isindeterminate() end

return ProgressBar
