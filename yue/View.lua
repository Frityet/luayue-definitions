---@meta

--[[# Base class for GUI components.

`View` provides methods to receive and change various style properties.
]]
---@class View : Responder
---@field ondragleave fun(self: View, info: DraggingInfo): nil Emitted when cursor leaves the view while dragging.
---@field onsizechanged fun(self: View): nil Emitted when the view's size has been changed.
---@field handledragenter fun(self: View, info: DraggingInfo, point: PointF): integer Called when user drags the cursor over the view for the first time. 
---@field handledragupdate fun(self: View, info: DraggingInfo, point: PointF): integer Called when user moves the cursor over the view while dragging. 
---@field handledrop fun(self: View, info: DraggingInfo, point: PointF): boolean Called when user releases the dragged data on the view.
local View = {}
--[[Return offset from `view`.]]
---@param view View 
---@return Vector2dF 
function View:offsetfromview(view) end

--[[Return offset from the window that owns the view.]]
---@return Vector2dF 
function View:offsetfromwindow() end

--[[Return the position and size of the view, relative to its parent.]]
---@return RectF 
function View:getbounds() end

--[[Make the view re-recalculate its layout.]]
---@return nil 
function View:layout() end

--[[Schedule to repaint the whole view.]]
---@return nil 
function View:schedulepaint() end

--[[Schedule to repaint the `rect` area in view.]]
---@param rect RectF 
---@return nil 
function View:schedulepaintrect(rect) end

--[[Show/Hide the view.]]
---@param visible boolean 
---@return nil 
function View:setvisible(visible) end

--[[Return whether the view is visible.]]
---@return boolean 
function View:isvisible() end

--[[Set whether the view is enabled.]]
---@param enable boolean 
---@return nil 
function View:setenabled(enable) end

--[[Return whether the view is enabled.]]
---@return boolean 
function View:isenabled() end

--[[Move the keyboard focus to the view.]]
---@return nil 
function View:focus() end

--[[Return whether the view has keyboard focus.]]
---@return boolean 
function View:hasfocus() end

--[[Set whether the view can be focused on.]]
---@param focusable boolean 
---@return nil 
function View:setfocusable(focusable) end

--[[Return whether the view can be focused on.]]
---@return boolean 
function View:isfocusable() end

--[[Set whether dragging mouse would move the window.]]
---@param can boolean 
---@return nil 
function View:setmousedowncanmovewindow(can) end

--[[Return whether dragging the view would move the window.]]
---@return boolean 
function View:ismousedowncanmovewindow() end

--[[Like `DoDragWithOptions` but do not set drag image.]]
---@param data table 
---@param operations integer 
---@return integer 
function View:dodrag(data, operations) end

--[[Start a drag session.]]
---@param data table 
---@param operations integer 
---@param options DragOptions 
---@return integer 
function View:dodragwithoptions(data, operations, options) end

--[[Cancel current drag session if the view is being used as drag source.]]
---@return nil 
function View:canceldrag() end

--[[Return whether the view is being used as drag source.]]
---@return boolean 
function View:isdragging() end

--[[Make the view a drag destination that accepets `types`.]]
---@param types table 
---@return nil 
function View:registerdraggedtypes(types) end

--[[Set the cursor to show when hovering the view.]]
---@param cursor Cursor 
---@return nil 
function View:setcursor(cursor) end

--[[Change the font used for drawing text in the view.]]
---@param font Font 
---@return nil 
function View:setfont(font) end

--[[Change the color used for drawing text in the view.]]
---@param color Color 
---@return nil 
function View:setcolor(color) end

--[[Change the background color of the view.]]
---@param color Color 
---@return nil 
function View:setbackgroundcolor(color) end

--[[Change the styles of the view.]]
---@param styles table 
---@return nil 
function View:setstyle(styles) end

--[[Return string representation of the view's layout.]]
---@return string 
function View:getcomputedlayout() end

--[[Return the minimum size needed to show the view.]]
---@return SizeF 
function View:getminimumsize() end

--[[Return parent view.]]
---@return View 
function View:getparent() end

--[[Return the window that the view belongs to.]]
---@return Window 
function View:getwindow() end

return View
