---@meta

---Native window.
---@class Window : Responder
local Window = {}
---Create a new window with `options`.
---@param options Window::Options
---@return Window
function Window.create(options) end

---Request to close the window.
---@return nil
function Window:close() end

---Return whether window has a native frame.
---@return boolean
function Window:hasframe() end

---Return whether window is transparent.
---@return boolean
function Window:istransparent() end

---Set whether window should have shadow.  Depending on platform, this may not work. 
---@param has boolean
---@return nil
function Window:sethasshadow(has) end

---Return whether window has shadow.
---@return boolean
function Window:hasshadow() end

---Set the content view of the window.  The content view will always be resized to fill window's client area. 
---@param view View
---@return nil
function Window:setcontentview(view) end

---Return the content view of the window.
---@return View
function Window:getcontentview() end

---Move the window to the center of the screen.
---@return nil
function Window:center() end

---Resize window to make the content view fit `size`.
---@param size SizeF
---@return nil
function Window:setcontentsize(size) end

---Return the size of content view.
---@return SizeF
function Window:getcontentsize() end

---Change the position and size of the window.
---@param bounds RectF
---@return nil
function Window:setbounds(bounds) end

---Return the position and size of the window.
---@return RectF
function Window:getbounds() end

---Set the minimum and maximum sizes of the window.  Passing an empty size means no constraint. 
---@param minsize SizeF, maxsize SizeF
---@return nil
function Window:setsizeconstraints(minsize, maxsize) end

---Return minimum and maximum sizes of the window.
---@return std::tuple
function Window:getsizeconstraints() end

---Set the minimum and maximum content sizes of the window.  Passing an empty size means no constraint. 
---@param minsize SizeF, maxsize SizeF
---@return nil
function Window:setcontentsizeconstraints(minsize, maxsize) end

---Return minimum and maximum content sizes of the window.
---@return std::tuple
function Window:getcontentsizeconstraints() end

---Show the window and activate it.
---@return nil
function Window:activate() end

---Move the focus away from the window.
---@return nil
function Window:deactivate() end

---Return whether window has focus.
---@return boolean
function Window:isactive() end

---Show/hide the window.
---@param visible boolean
---@return nil
function Window:setvisible(visible) end

---Return whether window is visible.
---@return boolean
function Window:isvisible() end

---Make the window always show above other normal windows.
---@param top boolean
---@return nil
function Window:setalwaysontop(top) end

---Return whether window is always above other normal windows.
---@return boolean
function Window:isalwaysontop() end

---Enter/leave fullscreen state.
---@param fullscreen boolean
---@return nil
function Window:setfullscreen(fullscreen) end

---Return whether window is in fullscreen.
---@return boolean
function Window:isfullscreen() end

---Maximize the window.
---@return nil
function Window:maximize() end

---Unmaximize the window.
---@return nil
function Window:unmaximize() end

---Return whether window is maximized.
---@return boolean
function Window:ismaximized() end

---Minimize the window.
---@return nil
function Window:minimize() end

---Restore the minimized window.
---@return nil
function Window:restore() end

---Return whether window is minimized.
---@return boolean
function Window:isminimized() end

---Set whether window can be resized.
---@param resizable boolean
---@return nil
function Window:setresizable(resizable) end

---Return whether window can be resized.
---@return boolean
function Window:isresizable() end

---Set whether window can be maximize.
---@param maximizable boolean
---@return nil
function Window:setmaximizable(maximizable) end

---Return whether window can be maximize.
---@return boolean
function Window:ismaximizable() end

---Set whether window can be minimized.
---@param minimizable boolean
---@return nil
function Window:setminimizable(minimizable) end

---Return whether window can be minimized.
---@return boolean
function Window:isminimizable() end

---Set whether window can be moved.
---@param movable boolean
---@return nil
function Window:setmovable(movable) end

---Return whether window can be moved.
---@return boolean
function Window:ismovable() end

---Set window title.
---@param title string
---@return nil
function Window:settitle(title) end

---Get window title.
---@return string
function Window:gettitle() end

---Set the background color of the window.
---@param color Color
---@return nil
function Window:setbackgroundcolor(color) end

---Set the window toolbar.
---@param toolbar Toolbar
---@return nil
function Window:settoolbar(toolbar) end

---Return the window toolbar.
---@return Toolbar
function Window:gettoolbar() end

---Set whether the title is visible, when title was hidden the toolber would be moved into the area previously occupied by the title. 
---@param visible boolean
---@return nil
function Window:settitlevisible(visible) end

---Return whether title is visible.
---@return boolean
function Window:istitlevisible() end

---Set the `NSWindowStyleMaskFullSizeContentView` style on the window. 
---@param full boolean
---@return nil
function Window:setfullsizecontentview(full) end

---Return whether the window has `NSWindowStyleMaskFullSizeContentView` style. 
---@return boolean
function Window:isfullsizecontentview() end

---Set whether to hide the window from taskbar.
---@param skip boolean
---@return nil
function Window:setskiptaskbar(skip) end

---Set the window icon.
---@param icon Image
---@return nil
function Window:seticon(icon) end

---Set the window menu bar.
---@param menubar MenuBar
---@return nil
function Window:setmenubar(menubar) end

---Return the window menu bar.
---@return MenuBar
function Window:getmenubar() end

---Return the parent window.
---@return Window
function Window:getparentwindow() end

---Make `child` a child window of this window.
---@param child Window
---@return nil
function Window:addchildwindow(child) end

---Remove this window as `child`'s parent window.
---@param child Window
---@return nil
function Window:removechildwindow(child) end

---Return all the child windows of this window.
---@return table
function Window:getchildwindows() end

---Emitted when the window is closed.
---@param self Window
---@return nil
function Window:onclose(self) end

---Emitted when the window is focused.
---@param self Window
---@return nil
function Window:onfocus(self) end

---Emitted when the window lost focus.
---@param self Window
---@return nil
function Window:onblur(self) end

---Called when user requests to close the window, should return whether the window can be closed. 
---@param self Window
---@return boolean
function Window:shouldclose(self) end

return Window
