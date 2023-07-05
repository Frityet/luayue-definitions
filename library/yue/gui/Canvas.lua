---@meta

--[[# Canvas

### Offscreen drawing.

### Detail

[API Documentation](https://libyue.com/docs/latest/lua/api/canvas.html#)
]]
---@class nu.Canvas
local Canvas = {}
--[[## Create a new canvas with specified size and scale factor.




]]
---@param size nu.SizeF 
---@param scalefactor number 
---@return nu.Canvas 
function Canvas.create(size, scalefactor) end

--[[## Create a new canvas with `size` using default scale factor.

This is strongly discouraged for using, since it does not work well with
multi-monitor setup. Only use it when you do not care about per-monitor
DPI.




]]
---@param size nu.SizeF 
---@return nu.Canvas 
function Canvas.createformainscreen(size) end

--[[## Return the scale factor of the canvas.



]]
---@return number 
function Canvas:getscalefactor() end

--[[## Return the Painter that can be used to draw on the canvas.



]]
---@return nu.Painter 
function Canvas:getpainter() end

--[[## Return the DIP size of canvas.



]]
---@return nu.SizeF 
function Canvas:getsize() end

return Canvas
