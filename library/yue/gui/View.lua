---@meta

--[[# View

### Base class for GUI components.

### Details

`View` provides methods to receive and change various style properties.

[API Documentation](https://libyue.com/docs/latest/lua/api/view.html#)
]]
---@class nu.View : nu.Responder
---@field ondragleave (fun(self: nu.View, info: nu.DraggingInfo): nil) | nu.Signal Emitted when cursor leaves the view while dragging.
---@field onsizechanged (fun(self: nu.View): nil) | nu.Signal Emitted when the view's size has been changed.
---@field onfocusin (fun(self: nu.View): boolean) | nu.Signal Emitted when the view gets keyboard focus.
---@field onfocusout (fun(self: nu.View): boolean) | nu.Signal Emitted when the view loses keyboard focus.
---@field handledragenter (fun(self: nu.View, info: nu.DraggingInfo, point: nu.PointF): integer) Called when user drags the cursor over the view for the first time.
---@field handledragupdate (fun(self: nu.View, info: nu.DraggingInfo, point: nu.PointF): integer) Called when user moves the cursor over the view while dragging.
---@field handledrop (fun(self: nu.View, info: nu.DraggingInfo, point: nu.PointF): boolean) Called when user releases the dragged data on the view.
local View = {}
--[[## Return offset from `view`.



]]
---@param view nu.View
---@return nu.Vector2dF
function View:offsetfromview(view) end

--[[## Return offset from the window that owns the view.



]]
---@return nu.Vector2dF
function View:offsetfromwindow() end

--[[## Return the position and size of the view, relative to its parent.



]]
---@return nu.RectF
function View:getbounds() end

--[[## Return the position and size of the view in the screen.



]]
---@return nu.RectF
function View:getboundsinscreen() end

--[[## Make the view re-recalculate its layout.



]]
---@return nil
function View:layout() end

--[[## Schedule to repaint the whole view.



]]
---@return nil
function View:schedulepaint() end

--[[## Schedule to repaint the `rect` area in view.



]]
---@param rect nu.RectF
---@return nil
function View:schedulepaintrect(rect) end

--[[## Show/Hide the view.



]]
---@param visible boolean
---@return nil
function View:setvisible(visible) end

--[[## Return whether the view is visible.



]]
---@return boolean
function View:isvisible() end

--[[## Return whether the view and its ancestors are visible.



]]
---@return boolean
function View:isvisibleinhierarchy() end

--[[## Set whether the view is enabled.

### Details

The enabled state of each view is not affected by its parent, disabling
a container-like view does not have any effect.


]]
---@param enable boolean
---@return nil
function View:setenabled(enable) end

--[[## Return whether the view is enabled.



]]
---@return boolean
function View:isenabled() end

--[[## Move the keyboard focus to the view.



]]
---@return nil
function View:focus() end

--[[## Return whether the view has keyboard focus.



]]
---@return boolean
function View:hasfocus() end

--[[## Set whether the view can be focused on.



]]
---@param focusable boolean
---@return nil
function View:setfocusable(focusable) end

--[[## Return whether the view can be focused on.



]]
---@return boolean
function View:isfocusable() end

--[[## Set whether dragging mouse would move the window.

### Details

For most platforms this method only works for frameless windows, having
this feature may also prevent mouse events to happen.

On macOS the `Container` view has this feature turned on by default. To
turn this feature on for the view, the view's parent view must also has
this feature turned on.

On Windows the view with this feature will be treated as titlebar, e.g.
double-clicking would maximize the window, right-clicking may show the
system menu.


]]
---@param can boolean
---@return nil
function View:setmousedowncanmovewindow(can) end

--[[## Return whether dragging the view would move the window.



]]
---@return boolean
function View:ismousedowncanmovewindow() end

--[[## Like `DoDragWithOptions` but do not set drag image.



]]
---@param data table
---@param operations integer
---@return integer
function View:dodrag(data, operations) end

--[[## Start a drag session.

### Details

The return value is a `<!type>DragOperation` indicating the result of
dragging.

This method should only be called in the `on_mouse_down` event, when user
starts to drag the cursor.

This method is blocking that it does not return until the drag session is
finished or cancelled. During the call a nested UI message loop will run
and other events will still be emitted.

Note that on macOS certain views may have `IsMouseDownCanMoveWindow`
defaulting to `true`, which will prevent drag session to start. Make sure
to call `SetMouseDownCanMoveWindow(false)` for drag sources.


]]
---@param data table
---@param operations integer
---@param options nu.DragOptions
---@return integer
function View:dodragwithoptions(data, operations, options) end

--[[## Cancel current drag session if the view is being used as drag source.



]]
---@return nil
function View:canceldrag() end

--[[## Return whether the view is being used as drag source.



]]
---@return boolean
function View:isdragging() end

--[[## Make the view a drag destination that accepets `types`.



]]
---@param types table
---@return nil
function View:registerdraggedtypes(types) end

--[[## Set the cursor to show when hovering the view.

### Details

On Linux, setting cursor would force the view to own its own GDK window.
For certain views like `Label`, this may have remove the view's background
color.


]]
---@param cursor nu.Cursor
---@return nil
function View:setcursor(cursor) end

--[[## Set the `tooltip` for the view.

### Details

This method will clear all tooltips added by `<!name>AddTooltipForRect`.


]]
---@param tooltip string
---@return nil
function View:settooltip(tooltip) end

--[[## Add `tooltip` for a defined `rect` in the view and return an ID for it.



]]
---@param tooltip string
---@param rect nu.RectF
---@return integer
function View:addtooltipforrect(tooltip, rect) end

--[[## Remove tooltip added by `<!name>AddTooltipForRect` with `id`.



]]
---@param id integer
---@return nil
function View:removetooltip(id) end

--[[## Change the font used for drawing text in the view.

### Details

This methods only works for `View`s that display text, like `Label` or
`Entry`.


]]
---@param font nu.Font
---@return nil
function View:setfont(font) end

--[[## Change the color used for drawing text in the view.

### Details

This methods only works for `View`s that display text, like `Label` or
`Entry`.


]]
---@param color nu.Color
---@return nil
function View:setcolor(color) end

--[[## Change the background color of the view.



]]
---@param color nu.Color
---@return nil
function View:setbackgroundcolor(color) end

--[[## Change the styles of the view.

### Details

Available style properties can be found at
[Layout System](../guides/layout_system.html).


]]
---@param styles nu.Styles
---@return nil
function View:setstyle(styles) end

--[[## Return string representation of the view's layout.



]]
---@return string
function View:getcomputedlayout() end

--[[## Return the minimum size needed to show the view.



]]
---@return nu.SizeF
function View:getminimumsize() end

--[[## Return parent view.



]]
---@return nu.View
function View:getparent() end

--[[## Return the window that the view belongs to.



]]
---@return nu.Window
function View:getwindow() end

return View
