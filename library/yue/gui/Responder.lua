---@meta

--[[# Responder

### Base class of Window and View for event processing.


[API Documentation](https://libyue.com/docs/latest/lua/api/responder.html#)
]]
---@class nu.Responder
---@field onmousedown (fun(self: nu.Responder, event: nu.MouseEvent): boolean) | nu.Signal Emitted when pressing mouse buttons.
---@field onmouseup (fun(self: nu.Responder, event: nu.MouseEvent): boolean) | nu.Signal Emitted when releasing mouse buttons.
---@field onmousemove (fun(self: nu.Responder, event: nu.MouseEvent): nil) | nu.Signal Emitted when user moves mouse in the responder.
---@field onmouseenter (fun(self: nu.Responder, event: nu.MouseEvent): nil) | nu.Signal Emitted when mouse enters the responder.
---@field onmouseleave (fun(self: nu.Responder, event: nu.MouseEvent): nil) | nu.Signal Emitted when mouse leaves the responder.
---@field onkeydown (fun(self: nu.Responder, event: nu.KeyEvent): boolean) | nu.Signal Emitted when pressing keyboard.
---@field onkeyup (fun(self: nu.Responder, event: nu.KeyEvent): boolean) | nu.Signal Emitted when releasing keyboard.
---@field oncapturelost (fun(self: nu.Responder): nil) | nu.Signal Emitted when the mouse capture on responder has been released.
local Responder = {}
--[[## Set mouse capture to the responder.



]]
---@return nil
function Responder:setcapture() end

--[[## Release mouse capture if the responder has mouse capture.



]]
---@return nil
function Responder:releasecapture() end

--[[## Return whether the responder has mouse capture.



]]
---@return boolean
function Responder:hascapture() end

--[[## Return a light userdata containing the pointer of underlying native
widget wrapped by the responder.


| ❗ This method is only available on the following platforms: Linux, macOS ❗ |
|-------------------------------------------------------------------------------|
### Details

On Linux the C++ type of the pointer is `GtkWidget*`, and on macOS it is
`NSResponder*`. The actual subclass type depends on which type this
responder is, for example for `Window` you can expect the native type to
be `GtkWindow*` on Linux and `NSWindow*` on macOS, and for `View` it would
be `GtkWidget*` on Linux and `NSView*` on macOS.

However for subclasses of `View`, the native type is not specified, you
may find out the information by looking into the source code, but the type
might be changed in future updates. For example, the native type of
`TextEdit` is currently a `GtkScrolledWindow*` with a `GtkTextView*` in
it, but we may want to replace it with a custom widget when adding more
features in future.


]]
---@return userdata
function Responder:getnative() end

return Responder
