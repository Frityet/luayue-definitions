---@meta

--[[# Painter

### Graphic context.

### Details

The `Painter` class can not be created by user, its instance can only be recevied in drawing events or via the `<!type>Canvas` class.
[API Documentation](https://libyue.com/docs/latest/lua/api/painter.html#)
]]
---@class nu.Painter
local Painter = {}
--[[## Save the entire state of the painter.



]]
---@return nil
function Painter:save() end

--[[## Restore the most recently saved state.



]]
---@return nil
function Painter:restore() end

--[[## Set how sample values are composited.

### Details

On Windows only `<!enum class>Normal` and `<!enum class>Copy` are supported.


]]
---@param mode nu.BlendMode
---@return nil
function Painter:setblendmode(mode) end

--[[## Create a new path.



]]
---@return nil
function Painter:beginpath() end

--[[## Close current path and move current point to the start of current path.

A straight line will be drew from current point to the start.




]]
---@return nil
function Painter:closepath() end

--[[## Move current point to `point`.



]]
---@param point nu.PointF
---@return nil
function Painter:moveto(point) end

--[[## Connect the last point in current path to `point` with a straight line.




]]
---@param point nu.PointF
---@return nil
function Painter:lineto(point) end

--[[## Add a cubic Bézier curve to current path.

The first two points are control points and the third one is the end
point. The starting point is the last point in the current path.




]]
---@param cp1 nu.PointF
---@param cp2 nu.PointF
---@param ep nu.PointF
---@return nil
function Painter:beziercurveto(cp1, cp2, ep) end

--[[## Add an arc to the path which is centered at `point` with `radius`
starting at `sa` angle and ending at `ea` angle going in clockwise
direction.




]]
---@param point nu.PointF
---@param radius number
---@param sa number
---@param ea number
---@return nil
function Painter:arc(point, radius, sa, ea) end

--[[## Add rectangle to current path.



]]
---@param rect nu.RectF
---@return nil
function Painter:rect(rect) end

--[[## Add current path to clip area by intersection.



]]
---@return nil
function Painter:clip() end

--[[## Add `rect` to clip area by intersection.



]]
---@param rect nu.RectF
---@return nil
function Painter:cliprect(rect) end

--[[## Add translate transformation which moves the origin by `offset`.




]]
---@param offset nu.Vector2dF
---@return nil
function Painter:translate(offset) end

--[[## Add rotation transformation.



]]
---@param angle number
---@return nil
function Painter:rotate(angle) end

--[[## Add scaling transformation to the painter.



]]
---@param scale nu.Vector2dF
---@return nil
function Painter:scale(scale) end

--[[## Set stroke color and fill color to `color`.



]]
---@param color nu.Color
---@return nil
function Painter:setcolor(color) end

--[[## Set the color used for shapes' outlines.



]]
---@param color nu.Color
---@return nil
function Painter:setstrokecolor(color) end

--[[## Set the color used when filling shapes.



]]
---@param color nu.Color
---@return nil
function Painter:setfillcolor(color) end

--[[## Set the width of lines.



]]
---@param width number
---@return nil
function Painter:setlinewidth(width) end

--[[## Draw current path by stroking its outline.



]]
---@return nil
function Painter:stroke() end

--[[## Draw a solid shape by filling current path's content area.



]]
---@return nil
function Painter:fill() end

--[[## Fill the whole area with transparent color.



]]
---@return nil
function Painter:clear() end

--[[## Draw a rectangular outline.



]]
---@param rect nu.RectF
---@return nil
function Painter:strokerect(rect) end

--[[## Draw a filled rectangle.



]]
---@param rect nu.RectF
---@return nil
function Painter:fillrect(rect) end

--[[## Draw scaled `image` to fit `rect`.



]]
---@param image nu.Image
---@param rect nu.RectF
---@return nil
function Painter:drawimage(image, rect) end

--[[## Draw the specified portion of `image` at `src` to fit `rect`.



]]
---@param image nu.Image
---@param src nu.RectF
---@param dest nu.RectF
---@return nil
function Painter:drawimagefromrect(image, src, dest) end

--[[## Draw scaled `canvas` to fit `rect`.



]]
---@param canvas nu.Canvas
---@param rect nu.RectF
---@return nil
function Painter:drawcanvas(canvas, rect) end

--[[## Draw the specified portion of `canvas` at `src` to fit `rect`.



]]
---@param canvas nu.Canvas
---@param src nu.RectF
---@param dest nu.RectF
---@return nil
function Painter:drawcanvasfromrect(canvas, src, dest) end

--[[## Draw `text` bounded by `rect`.



]]
---@param text nu.AttributedText
---@param rect nu.RectF
---@return nil
function Painter:drawattributedtext(text, rect) end

--[[## Draw `text` with `attributes` bounded by `rect`.



]]
---@param text string
---@param rect nu.RectF
---@param attributes nu.TextAttributes
---@return nil
function Painter:drawtext(text, rect, attributes) end

return Painter
