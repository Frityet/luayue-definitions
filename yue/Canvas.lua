---@meta

---Offscreen drawing.
---@class Canvas
local Canvas = {}
---Return the scale factor of the canvas.
---@return number
function Canvas:getscalefactor() end

---Return the Painter that can be used to draw on the canvas.
---@return Painter
function Canvas:getpainter() end

---Return the DIP size of canvas.
---@return SizeF
function Canvas:getsize() end

return Canvas
