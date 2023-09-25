---@meta
---@class nu
local nu = {}
---@alias nu.Button.Style
---| "rounded"
---| "regular-square"
---| "thick-square"
---| "thicker-square"
---| "disclosure"
---| "shadowless-square"
---| "circular"
---| "textured-square"
---| "help-button"
---| "small-square"
---| "textured-rounded"
---| "round-rect"
---| "recessed"
---| "rounded-disclosure"
---| "inline"
---@alias nu.EventType
---| "unknown"
---| "mouse-down"
---| "mouse-up"
---| "mouse-move"
---| "mouse-enter"
---| "mouse-leave"
---| "key-down"
---| "key-up"
--[[# Container

### Drawable view with child views.

#### Details

The `Container` view is mainly used for two purposes:
* Show custom drawn content;
* Display a collection of child views.

Note that the `index` counts from `1`, following lua's convention.

[API Documentation](https://libyue.com/docs/latest/lua/api/container.html#)
]]
---@class nu.Container : nu.View
---@field ondraw (fun(self: nu.Container, painter: nu.Painter, dirty: nu.RectF): nil) | nu.Signal Emitted when button the operating system or application requests to draw a portion of the view.
nu.Container = {}

--[[## Create a new container view.



]]
---@return nu.Container
function nu.Container.create() end

--[[## Get the minimum size to show all children of the view.Note that if the view is using a `flex-wrap: wrap` style, this methodmight return a extremely wide/high size since it does not know the bestwidth/height to show the children.



]]
---@return nu.SizeF
function nu.Container:getpreferredsize() end

--[[## Return the minimum height to show all child of the view for the `width`.



]]
---@param width number
---@return number
function nu.Container:getpreferredheightforwidth(width) end

--[[## Return the minimum width to show all child of the view for the `height`.



]]
---@param height number
---@return number
function nu.Container:getpreferredwidthforheight(height) end

--[[## Append a child `view` to the container.This method will silently fail if the `view` already has a parent.



]]
---@param view nu.View
---@return nil
function nu.Container:addchildview(view) end

--[[## Add a child `view` to the container at `index`.This method will silently fail if the `view` already has a parent.



]]
---@param view nu.View
---@param index integer
---@return nil
function nu.Container:addchildviewat(view, index) end

--[[## Remove a child `view` from this container.This method will silently fail if the `view` is not a child of thecontainer.



]]
---@param view nu.View
---@return nil
function nu.Container:removechildview(view) end

--[[## Return the count of children in the container.



]]
---@return integer
function nu.Container:childcount() end

--[[## Return the child `view` at `index`.This method will silently fail if the `index` is out of range.



]]
---@param index integer
---@return nu.View
function nu.Container:childat(index) end

--[[# Table.ColumnOptions

### Options for columns of Table.


[API Documentation](https://libyue.com/docs/latest/lua/api/table.columnoptions.html#)
]]
---@class nu.Table.ColumnOptions
---@field type nu.Table.ColumnType The `type` of column, which decides how table cells are rendered.
---@field ondraw function If the `type` is `Custom`, this function will be used for renderering table cells under the column.
---@field column integer Which `column` of table model to show.
---@field width integer Initial width of column.
nu.Table.ColumnOptions = {}
---@alias nu.Color.Name
---| "text" Normal text color.
---| "disabled-text" Text Color for disabled views.
---| "text-edit-background" Background Color for TextEdit view.
---| "disabled-text-edit-background" Background Color for disabled TextEdit view.
---| "control" The color to use for the flat surfaces of a control.
---| "window-background" Window background color.
--[[# FileOpenDialog

### Dialog used for opening files or folders.


[API Documentation](https://libyue.com/docs/latest/lua/api/fileopendialog.html#)
]]
---@class nu.FileOpenDialog : nu.FileDialog
nu.FileOpenDialog = {}

--[[## Create an open dialog.



]]
---@return nu.FileOpenDialog
function nu.FileOpenDialog.create() end

--[[## Return the chosen items in dialog.



]]
---@return table
function nu.FileOpenDialog:getresults() end

--[[# Notification.Action

### Describes the action button of `Notification`.


[API Documentation](https://libyue.com/docs/latest/lua/api/notification.action.html#)
]]
---@class nu.Notification.Action
---@field title string The title of the action button.
---@field info string The user info attached to the action.
nu.Notification.Action = {}
--[[# Window

### Native window.


[API Documentation](https://libyue.com/docs/latest/lua/api/window.html#)
]]
---@class nu.Window : nu.Responder
---@field onclose (fun(self: nu.Window): nil) | nu.Signal Emitted when the window is closed.
---@field onfocus (fun(self: nu.Window): nil) | nu.Signal Emitted when the window is focused.
---@field onblur (fun(self: nu.Window): nil) | nu.Signal Emitted when the window lost focus.
---@field shouldclose (fun(self: nu.Window): boolean) Called when user requests to close the window, should return whether the window can be closed.
nu.Window = {}

--[[## Create a new window with `options`.



]]
---@param options nu.Window.Options
---@return nu.Window
function nu.Window.create(options) end

--[[## Request to close the window.



]]
---@return nil
function nu.Window:close() end

--[[## Return whether window has a native frame.



]]
---@return boolean
function nu.Window:hasframe() end

--[[## Return whether window is transparent.



]]
---@return boolean
function nu.Window:istransparent() end

--[[## Set whether window should have shadow.Depending on platform, this may not work.



]]
---@param has boolean
---@return nil
function nu.Window:sethasshadow(has) end

--[[## Return whether window has shadow.



]]
---@return boolean
function nu.Window:hasshadow() end

--[[## Set the content view of the window.The content view will always be resized to fill window's client area.



]]
---@param view nu.View
---@return nil
function nu.Window:setcontentview(view) end

--[[## Return the content view of the window.



]]
---@return nu.View
function nu.Window:getcontentview() end

--[[## Move the window to the center of the screen.



]]
---@return nil
function nu.Window:center() end

--[[## Resize window to make the content view fit `size`.



]]
---@param size nu.SizeF
---@return nil
function nu.Window:setcontentsize(size) end

--[[## Return the size of content view.



]]
---@return nu.SizeF
function nu.Window:getcontentsize() end

--[[## Change the position and size of the window.



]]
---@param bounds nu.RectF
---@return nil
function nu.Window:setbounds(bounds) end

--[[## Return the position and size of the window.



]]
---@return nu.RectF
function nu.Window:getbounds() end

--[[## Set the minimum and maximum sizes of the window.Passing an empty size means no constraint.



]]
---@param minsize nu.SizeF
---@param maxsize nu.SizeF
---@return nil
function nu.Window:setsizeconstraints(minsize, maxsize) end

--[[## Return minimum and maximum sizes of the window.



]]
---@return nu.std.tuple
function nu.Window:getsizeconstraints() end

--[[## Set the minimum and maximum content sizes of the window.Passing an empty size means no constraint.



]]
---@param minsize nu.SizeF
---@param maxsize nu.SizeF
---@return nil
function nu.Window:setcontentsizeconstraints(minsize, maxsize) end

--[[## Return minimum and maximum content sizes of the window.



]]
---@return nu.std.tuple
function nu.Window:getcontentsizeconstraints() end

--[[## Show the window and activate it.



]]
---@return nil
function nu.Window:activate() end

--[[## Move the focus away from the window.



]]
---@return nil
function nu.Window:deactivate() end

--[[## Return whether window has focus.



]]
---@return boolean
function nu.Window:isactive() end

--[[## Show/hide the window.



]]
---@param visible boolean
---@return nil
function nu.Window:setvisible(visible) end

--[[## Return whether window is visible.



]]
---@return boolean
function nu.Window:isvisible() end

--[[## Make the window always show above other normal windows.



]]
---@param top boolean
---@return nil
function nu.Window:setalwaysontop(top) end

--[[## Return whether window is always above other normal windows.



]]
---@return boolean
function nu.Window:isalwaysontop() end

--[[## Enter/leave fullscreen state.



]]
---@param fullscreen boolean
---@return nil
function nu.Window:setfullscreen(fullscreen) end

--[[## Return whether window is in fullscreen.



]]
---@return boolean
function nu.Window:isfullscreen() end

--[[## Maximize the window.



]]
---@return nil
function nu.Window:maximize() end

--[[## Unmaximize the window.



]]
---@return nil
function nu.Window:unmaximize() end

--[[## Return whether window is maximized.



]]
---@return boolean
function nu.Window:ismaximized() end

--[[## Minimize the window.



]]
---@return nil
function nu.Window:minimize() end

--[[## Restore the minimized window.



]]
---@return nil
function nu.Window:restore() end

--[[## Return whether window is minimized.



]]
---@return boolean
function nu.Window:isminimized() end

--[[## Set whether window can be resized.



]]
---@param resizable boolean
---@return nil
function nu.Window:setresizable(resizable) end

--[[## Return whether window can be resized.



]]
---@return boolean
function nu.Window:isresizable() end

--[[## Set whether window can be maximize.



]]
---@param maximizable boolean
---@return nil
function nu.Window:setmaximizable(maximizable) end

--[[## Return whether window can be maximize.



]]
---@return boolean
function nu.Window:ismaximizable() end

--[[## Set whether window can be minimized.



]]
---@param minimizable boolean
---@return nil
function nu.Window:setminimizable(minimizable) end

--[[## Return whether window can be minimized.



]]
---@return boolean
function nu.Window:isminimizable() end

--[[## Set whether window can be moved.



]]
---@param movable boolean
---@return nil
function nu.Window:setmovable(movable) end

--[[## Return whether window can be moved.



]]
---@return boolean
function nu.Window:ismovable() end

--[[## Set window title.



]]
---@param title string
---@return nil
function nu.Window:settitle(title) end

--[[## Get window title.



]]
---@return string
function nu.Window:gettitle() end

--[[## Set the background color of the window.



]]
---@param color nu.Color
---@return nil
function nu.Window:setbackgroundcolor(color) end

--[[## Return the scale factor of the window.



]]
---@return number
function nu.Window:getscalefactor() end

--[[## Set the window toolbar.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param toolbar nu.Toolbar
---@return nil
function nu.Window:settoolbar(toolbar) end

--[[## Return the window toolbar.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return nu.Toolbar
function nu.Window:gettoolbar() end

--[[## Set whether the title is visible, when title was hidden the toolber wouldbe moved into the area previously occupied by the title.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param visible boolean
---@return nil
function nu.Window:settitlevisible(visible) end

--[[## Return whether title is visible.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return boolean
function nu.Window:istitlevisible() end

--[[## Set the `NSWindowStyleMaskFullSizeContentView` style on the window.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param full boolean
---@return nil
function nu.Window:setfullsizecontentview(full) end

--[[## Return whether the window has `NSWindowStyleMaskFullSizeContentView` style.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return boolean
function nu.Window:isfullsizecontentview() end

--[[## Set whether to hide the window from taskbar.

| ❗ This method is only available on the following platforms: Windows, Linux ❗ |
|---------------------------------------------------------------------------------|


]]
---@param skip boolean
---@return nil
function nu.Window:setskiptaskbar(skip) end

--[[## Set the window icon.

| ❗ This method is only available on the following platforms: Windows, Linux ❗ |
|---------------------------------------------------------------------------------|


]]
---@param icon nu.Image
---@return nil
function nu.Window:seticon(icon) end

--[[## Set the window menu bar.

| ❗ This method is only available on the following platforms: Windows, Linux ❗ |
|---------------------------------------------------------------------------------|


]]
---@param menubar nu.MenuBar
---@return nil
function nu.Window:setmenubar(menubar) end

--[[## Return the window menu bar.

| ❗ This method is only available on the following platforms: Windows, Linux ❗ |
|---------------------------------------------------------------------------------|


]]
---@return nu.MenuBar
function nu.Window:getmenubar() end

--[[## Set whether the window menu bar is visible.

| ❗ This method is only available on the following platforms: Windows, Linux ❗ |
|---------------------------------------------------------------------------------|
#### Details

The accelerators of menu items will still work when menu bar is hidden.

Calling `<!name>SetMenu` will reset the menu bar to visible.


]]
---@param visible boolean
---@return nil
function nu.Window:setmenubarvisible(visible) end

--[[## Return a light userdata representing the HWND of the native window.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
#### Details

To get the value of HWND, you should directly convert the light userdata
to HWND, instead of reading the memory of the light userdata.


]]
---@return userdata
function nu.Window:gethwnd() end

--[[## Return the parent window.



]]
---@return nu.Window
function nu.Window:getparentwindow() end

--[[## Make `child` a child window of this window.

#### Details

This method will do nothing if `child` already has a parent window.

]]
---@param child nu.Window
---@return nil
function nu.Window:addchildwindow(child) end

--[[## Remove this window as `child`'s parent window.



]]
---@param child nu.Window
---@return nil
function nu.Window:removechildwindow(child) end

--[[## Return all the child windows of this window.



]]
---@return table
function nu.Window:getchildwindows() end

--[[# SizeF

### Size type.

#### Details


This type is represented by a table with `width` and `height` properties.

```lua
window:setcontentsize{width=100, height=100}
```

When a function accepts `SizeF` as its last parameter, you can simply
unpack `width` and `height`:

```lua
window:setcontentsize(100, 100)
```

[API Documentation](https://libyue.com/docs/latest/lua/api/sizef.html#)
]]
---@class nu.SizeF
---@field width number Size width.
---@field height number Size height.
nu.SizeF = {}

--[[# ProgressBar

### Horizontal bar showing progress.


[API Documentation](https://libyue.com/docs/latest/lua/api/progressbar.html#)
]]
---@class nu.ProgressBar : nu.View
nu.ProgressBar = {}

--[[## Create a new `ProgressBar`.



]]
---@return nu.ProgressBar
function nu.ProgressBar.create() end

--[[## Set the percent value between `0` and `100.0`.



]]
---@param percent number
---@return nil
function nu.ProgressBar:setvalue(percent) end

--[[## Return the percent value between `0` and `100.0`.



]]
---@return number
function nu.ProgressBar:getvalue() end

--[[## Set whether the progress bar is indeterminate.



]]
---@param indeterminate boolean
---@return nil
function nu.ProgressBar:setindeterminate(indeterminate) end

--[[## Return whether the progress bar is indeterminate.



]]
---@return boolean
function nu.ProgressBar:isindeterminate() end

---@alias nu.Font.Style
---| "normal"
---| "italic"
---@alias nu.MessageBox.Type
---| "none"
---| "information"
---| "warning"
---| "error"
---@alias nu.MenuItem.Type
---| "label"
---| "checkbox"
---| "radio"
---| "separator"
---| "submenu"
--[[# DatePicker.Options

### Options for creating DatePicker.


[API Documentation](https://libyue.com/docs/latest/lua/api/datepicker.options.html#)
]]
---@class nu.DatePicker.Options
---@field elements integer A bit array of `elements` to display, default is `<!enum>DatePicker::ELEMENT_YEAR_MONTH_DAY`.
---@field hasstepper boolean Whether to show a stepper in the text field, default is true.
nu.DatePicker.Options = {}
---@alias nu.ImageScale
---| "none" The image is not scaled.
---| "fill" Scale each dimension to exactly fit destination, the aspect ratio of the image is no preserved.
---| "down" If it is too large for the destination, scale the image down while preserving the aspect ratio.
---| "up-or-down" Scale the image to its maximum possible dimensions while both staying within the destination area and preserving its aspect ratio.
--[[# Group

### Display a container view with title and border.


[API Documentation](https://libyue.com/docs/latest/lua/api/group.html#)
]]
---@class nu.Group : nu.View
nu.Group = {}

--[[## Create a new `Group` with `title`.



]]
---@param title string
---@return nu.Group
function nu.Group.create(title) end

--[[## Set the content view.



]]
---@param view nu.Container
---@return nil
function nu.Group:setcontentview(view) end

--[[## Return the content view.



]]
---@return nu.Container
function nu.Group:getcontentview() end

--[[## Set the title.



]]
---@param title string
---@return nil
function nu.Group:settitle(title) end

--[[## Return the title.



]]
---@return string
function nu.Group:gettitle() end

--[[# App

### Application class.

#### Details

This class represents current app and provides app wide APIs.

This class can not be created by user, you can only receive its global
instance from the `app` property of the module:

```lua
gui.app:getapplicationmenu()
```

[API Documentation](https://libyue.com/docs/latest/lua/api/app.html#)
]]
---@class nu.App
nu.App = {}

--[[## Set the name of current app.

#### Details

The app name should be something like "My App", it will be used in vairous
places, such as folder name when storing user data, or key name when
writing registry.

You should always call this API at the beginning of your app.

On macOS it is strong recommended to use the same name with the
`CFBundleName` field of app bundle's `Info.plist` file.


]]
---@param name string
---@return nil
function nu.App:setname(name) end

--[[## Return current app's name.

#### Details

If `<!method>App::SetName(name)` has never been called, this API will try to guess a
name from existing information, for example the executable's version info,
or the app bundle information, or the executable file's base name.


]]
---@return string
function nu.App:getname() end

--[[## Set the application ID.

| ❗ This method is only available on the following platforms: Windows, Linux ❗ |
|---------------------------------------------------------------------------------|
#### Details

The application ID must be globally unique, and it is recommended to use
something like "org.myself.myapp".

On macOS the application ID is the app bundle ID, and there is no way to
change it at runtime.

On Linux the application ID will be used in various places, such as the
name of the [`.desktop` file](https://developer.gnome.org/integration-guide/stable/desktop-files.html),
or the base name of GSettings schemas.

On Windows the application ID is [`AppUserModelID`](https://docs.microsoft.com/en-us/windows/win32/shell/appids),
it is mainly used to recognize which app a process belongs to. For
UWP/Desktop Bridge apps, Windows will assign an AppUserModelID to the app
and this API should not be used.


]]
---@param id string
---@return nil
function nu.App:setid(id) end

--[[## Return the application ID.

#### Details

On macOS if the app is bundled, the app bundle ID will be returned,
otherwise empty string will be returned.

On Linux the ID set by `<!name>SetID` will be returned.

On Windows the [`AppUserModelID`](https://docs.microsoft.com/en-us/windows/win32/shell/appids)
will be returned. If neither you or Windows ever assigned an ID to the
app, empty string will be returned.


]]
---@return string
function nu.App:getid() end

--[[## Set the application menu bar.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param menu nu.MenuBar
---@return nil
function nu.App:setapplicationmenu(menu) end

--[[## Return the application menu bar.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return nu.MenuBar
function nu.App:getapplicationmenu() end

--[[## Set the `label` to be displayed in dock’s badging area.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param label string
---@return nil
function nu.App:setdockbadgelabel(label) end

--[[## Get the label displayed in dock’s badging area.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return string
function nu.App:getdockbadgelabel() end

--[[## Return whether app is running as UWP/Desktop Bridge.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
#### Details

On Windows the Win32 apps can run as UWP apps by using
[Desktop Bridge](https://techcommunity.microsoft.com/t5/windows-dev-appconsult/desktop-bridge-8211-the-bridge-between-desktop-apps-and-the/ba-p/316488),
which is required for submitting Win32 apps to Microsoft Store.

There are a few runtime differences when running apps as UWP, and this
API can be used to detect the environment.


]]
---@return boolean
function nu.App:isrunningasuwp() end

--[[## Create a start menu shortcut for current user linking to current process.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
#### Details

This API will write the `AppUserModelID` and `ToastActivatorCLSID` to the
shortcut file, and the shortcut file's name will be the app's name, so it
is recommended to call `<!method>App::SetID(id)` and
`<!method>App::SetName(name)` before using this API.

Note that on Windows you should generally not write start menu shortcut
automatically, by convention the file is commonly created by installers
or users themselves. This API is usually used for testing purpose.


]]
---@param options nu.App.ShortcutOptions
---@return boolean
function nu.App:createstartmenushortcut(options) end

--[[## Return file path to the shortcut created by the `<!method>App::CreateStartMenuShortcut(options)` API.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|


]]
---@return string
function nu.App:getstartmenushortcutpath() end

--[[## Make current app the active app.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|
#### Details

The `force` parameter is normally set to false. When the Finder launches
an app, using a value of false for `force` allows the app to become active
if the user waits for it to launch, but the app remains unobtrusive if the
user activates another app. Regardless of the setting of flag, there may
be a time lag before the app activates—you should not assume the app will
be active immediately after sending this message.


]]
---@param force boolean
---@return nil
function nu.App:activate(force) end

--[[## Deactivate current app.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return nil
function nu.App:deactivate() end

--[[## Return whether current app is the active app.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return boolean
function nu.App:isactive() end

--[[## Modify the app's activation policy.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param policy nu.App.ActivationPolicy
---@return nil
function nu.App:setactivationpolicy(policy) end

--[[## Return app's activation policy.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return nu.App.ActivationPolicy
function nu.App:getactivationpolicy() end

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
nu.Responder = {}

--[[## Set mouse capture to the responder.



]]
---@return nil
function nu.Responder:setcapture() end

--[[## Release mouse capture if the responder has mouse capture.



]]
---@return nil
function nu.Responder:releasecapture() end

--[[## Return whether the responder has mouse capture.



]]
---@return boolean
function nu.Responder:hascapture() end

--[[## Return a light userdata containing the pointer of underlying nativewidget wrapped by the responder.

| ❗ This method is only available on the following platforms: Linux, macOS ❗ |
|-------------------------------------------------------------------------------|
#### Details

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
function nu.Responder:getnative() end

--[[# MenuBar

### Menu bar.


[API Documentation](https://libyue.com/docs/latest/lua/api/menubar.html#)
]]
---@class nu.MenuBar : nu.MenuBase
nu.MenuBar = {}

--[[## Create a menubar.



]]
---@param items table
---@return nu.MenuBar
function nu.MenuBar.create(items) end

---@alias nu.TextAlign
---| "start"
---| "center"
---| "end"
--[[# TableModel

### Base class for models of Table.

#### Details


For simple use cases, the `<!type>SimpleTableModel` can be used.

For implementing a custom `TableModel`, please see
`<!type>AbstractTableModel`.

[API Documentation](https://libyue.com/docs/latest/lua/api/tablemodel.html#)
]]
---@class nu.TableModel
nu.TableModel = {}

--[[## Return how many rows are in the model.



]]
---@return integer
function nu.TableModel:getrowcount() end

--[[## Return the data at `column` and `row`.

#### Details

Note that the returned value will be stored as primary types, native
objects (for example `Image`s) can not be passed to renderer.


]]
---@param column integer
---@param row integer
---@return any
function nu.TableModel:getvalue(column, row) end

--[[## Change the `value` at `column` and `row`.

#### Details


Note that the value will be stored as primary types, native objects (for
example `Image`s) can not be saved.


]]
---@param column integer
---@param row integer
---@param value any
---@return nil
function nu.TableModel:setvalue(column, row, value) end

--[[## Called by implementers to notify the table that a row is inserted.



]]
---@param row integer
---@return nil
function nu.TableModel:notifyrowinsertion(row) end

--[[## Called by implementers to notify the table that a row is removed.



]]
---@param row integer
---@return nil
function nu.TableModel:notifyrowdeletion(row) end

--[[## Called by implementers to notify the table that the value at `column` and`row` has been changed.



]]
---@param column integer
---@param row integer
---@return nil
function nu.TableModel:notifyvaluechange(column, row) end

--[[# Menu

### Popup menu.


[API Documentation](https://libyue.com/docs/latest/lua/api/menu.html#)
]]
---@class nu.Menu : nu.MenuBase
nu.Menu = {}

--[[## Create a popup menu.



]]
---@param items table
---@return nu.Menu
function nu.Menu.create(items) end

--[[## Show the popup menu at current mouse position, this method will blockuntil the menu is dismissed.



]]
---@return nil
function nu.Menu:popup() end

--[[## Show the popup menu at |point|, this method will block until the menu isdismissed.



]]
---@param point nu.PointF
---@return nil
function nu.Menu:popupat(point) end

---@alias nu.Orientation
---| "horizontal"
---| "vertical"
--[[# GifPlayer

### Image view with animated GIF support.

#### Details

It can also display other types of images, but only GIF images can be
animated.

Displaying animated GIF images consumes lots of CPU resources, it is highly
unrecommended to constantly display animated GIF images.

For optimization, hiding the view would automatically pause the animation,
and showing the view would automatically resume previous state.

[API Documentation](https://libyue.com/docs/latest/lua/api/gifplayer.html#)
]]
---@class nu.GifPlayer : nu.View
nu.GifPlayer = {}

--[[## Create a new `GifPlayer`.



]]
---@return nu.GifPlayer
function nu.GifPlayer.create() end

--[[## Set the image.

#### Details

After setting the image, the animated image will start playing
automatically.


]]
---@param image nu.Image
---@return nil
function nu.GifPlayer:setimage(image) end

--[[## Return the image.



]]
---@return nu.Image
function nu.GifPlayer:getimage() end

--[[## Set whether the animated image should be played.



]]
---@param animating boolean
---@return nil
function nu.GifPlayer:setanimating(animating) end

--[[## Return whether the image is animating.



]]
---@return boolean
function nu.GifPlayer:isanimating() end

--[[## Set the scaling mode.

#### Details

The default scaling mode is `<!enum class>None`.

]]
---@param scale nu.ImageScale
---@return nil
function nu.GifPlayer:setscale(scale) end

--[[## Return the scaling mode.



]]
---@return nu.ImageScale
function nu.GifPlayer:getscale() end

--[[# MenuItem

### Menu item.


[API Documentation](https://libyue.com/docs/latest/lua/api/menuitem.html#)
]]
---@class nu.MenuItem
---@field onclick (fun(self: nu.MenuItem): nil) | nu.Signal Emitted when item is clicked.
---@field validate (fun(self: nu.MenuItem): boolean) Called before the item shows or activates, should return whether the item is enabled.
nu.MenuItem = {}

--[[## Create a menu item with `type`.



]]
---@param type nu.MenuItem.Type
---@return nu.MenuItem
function nu.MenuItem.create(type) end

--[[## Create a menu item with `options`.



]]
---@param options table
---@return nu.MenuItem
function nu.MenuItem.create(options) end

--[[## Emulate user clicking the menu item.



]]
---@return nil
function nu.MenuItem:click() end

--[[## Change the item's label.



]]
---@param label string
---@return nil
function nu.MenuItem:setlabel(label) end

--[[## Return the item's label.



]]
---@return string
function nu.MenuItem:getlabel() end

--[[## Set the submenu attached to the item.This method only works for `submenu` type menu items.



]]
---@param submenu nu.Menu
---@return nil
function nu.MenuItem:setsubmenu(submenu) end

--[[## Return the submenu attached to the item.



]]
---@return nu.Menu
function nu.MenuItem:getsubmenu() end

--[[## Set the `checked` state of the item.This method only works for `radio` and `checkbox` type menu items.



]]
---@param checked boolean
---@return nil
function nu.MenuItem:setchecked(checked) end

--[[## Return the `checked` state of the item.



]]
---@return boolean
function nu.MenuItem:ischecked() end

--[[## Enable/disable the item.



]]
---@param enabled boolean
---@return nil
function nu.MenuItem:setenabled(enabled) end

--[[## Return whether the item is enabled.



]]
---@return boolean
function nu.MenuItem:isenabled() end

--[[## Show/hide the item.



]]
---@param visible boolean
---@return nil
function nu.MenuItem:setvisible(visible) end

--[[## Return whether the item is visible to users.



]]
---@return boolean
function nu.MenuItem:isvisible() end

--[[## Set the `accelerator` used to activate the item.



]]
---@param accelerator nu.Accelerator
---@return nil
function nu.MenuItem:setaccelerator(accelerator) end

--[[## Set the item's image.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|


]]
---@param image nu.Image
---@return nil
function nu.MenuItem:setimage(image) end

--[[## Return the item's image.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|


]]
---@return nu.Image
function nu.MenuItem:getimage() end

--[[# Vibrant

### Translucency view.

#### Details

This view is only implemented for macOS by wrapping
[`NSVisualEffectView`](https://developer.apple.com/documentation/appkit/nsvisualeffectview).

It is not possible to draw on this view, to display content on it you have to
add the content as child view.

[API Documentation](https://libyue.com/docs/latest/lua/api/vibrant.html#)
]]
---@class nu.Vibrant : nu.Container
nu.Vibrant = {}

--[[## Create a new `Vibrant` view.



]]
---@return nu.Vibrant
function nu.Vibrant.create() end

--[[## Set the material for the view.



]]
---@param material nu.Vibrant.Material
---@return nil
function nu.Vibrant:setmaterial(material) end

--[[## Get the material for the view.



]]
---@return nu.Vibrant.Material
function nu.Vibrant:getmaterial() end

--[[## Set the blending mode for the view.



]]
---@param mode nu.Vibrant.BlendingMode
---@return nil
function nu.Vibrant:setblendingmode(mode) end

--[[## Get the blending mode for the view.



]]
---@return nu.Vibrant.BlendingMode
function nu.Vibrant:getblendingmode() end

--[[# NotificationCenter.InputData

### The data passed in `<!name>on_toast_activate` event.


[API Documentation](https://libyue.com/docs/latest/lua/api/notificationcenter.inputdata.html#)
]]
---@class nu.NotificationCenter.InputData
---@field key string
---@field value string
nu.NotificationCenter.InputData = {}
--[[# Toolbar.Item

### Represent an item of `Toolbar`.


[API Documentation](https://libyue.com/docs/latest/lua/api/toolbar.item.html#)
]]
---@class nu.Toolbar.Item
---@field label string Item's label.
---@field minsize nu.SizeF Item's minimum size.
---@field maxsize nu.SizeF Item's maximum size.
---@field image nu.Image Item's image.
---@field view nu.View Item's custom view.
---@field onclick function Function called when item is clicked.
nu.Toolbar.Item = {}
--[[# Lifetime

### Application lifetime.

#### Details

This class does system GUI toolkit intializations, and provides APIs around
native GUI toolkit's application lifetime APIs. You should not use this API
when integrating Yue into existing GUI apps.

When using this class, you must create `Lifetime` before creating `State`.

[API Documentation](https://libyue.com/docs/latest/lua/api/lifetime.html#)
]]
---@class nu.Lifetime
---@field onready (fun(): nil) | nu.Signal Emitted when received `applicationDidFinishLaunching` notification.
---@field onactivate (fun(): nil) | nu.Signal Emitted when received `applicationShouldHandleReopen` notification and there is no visible windows. This usually happens when the app is activated by Finder, or user clicks on the dock icon.
---@field openfiles (fun(files: table): Lifetime::Reply) Called when received message to open files.
nu.Lifetime = {}

--[[# Button

### Native button, can also be used as checkbox and radio button.


[API Documentation](https://libyue.com/docs/latest/lua/api/button.html#)
]]
---@class nu.Button : nu.View
---@field onclick (fun(self: nu.Button): nil) | nu.Signal Emitted when button is clicked.
nu.Button = {}

--[[## Create a normal button with `title`.



]]
---@param title string
---@return nu.Button
function nu.Button.create(title) end

--[[## Create a button by reading `options`.



]]
---@param options table
---@return nu.Button
function nu.Button.create(options) end

--[[## Mark this button as default button.



]]
---@return nil
function nu.Button:makedefault() end

--[[## Set button title.



]]
---@param title string
---@return nil
function nu.Button:settitle(title) end

--[[## Return the button title.



]]
---@return string
function nu.Button:gettitle() end

--[[## Set `checked` state of checkbox or radio.



]]
---@param checked boolean
---@return nil
function nu.Button:setchecked(checked) end

--[[## Return whether checkbox or radio is checked.



]]
---@return boolean
function nu.Button:ischecked() end

--[[## Set the image of button.



]]
---@param image nu.Image
---@return nil
function nu.Button:setimage(image) end

--[[## Return the image of button.



]]
---@return nu.Image
function nu.Button:getimage() end

--[[## Set the visual style of the button.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param style nu.Button.Style
---@return nil
function nu.Button:setbuttonstyle(style) end

--[[## Set the control size of the button.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param size nu.ControlSize
---@return nil
function nu.Button:setcontrolsize(size) end

--[[## Set whether the button has a border.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param yes boolean
---@return nil
function nu.Button:sethasborder(yes) end

--[[## Return whether the button has a border.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return boolean
function nu.Button:hasborder() end

---@alias nu.Vibrant.BlendingMode
---| "behind-window"
---| "within-window"
--[[# Notification

### Send native notifications.

#### Details

The `Notification` API is responsible for sending notifications, for handling
events of notifications, the `<!type>NotificationCenter` API should be used.

Before sending notifications, you should set app's ID and name otherwise the
notifications may not be displayed.



```lua
gui.app:setname("MyApp")
if (sys.platform ~= "macos")
  gui.app:setid("org.yue.myapp")
else if (gui.app:getid() == '')
  print("Unable to send notifications due to app not being bundled")

-- Create start menu shortcut for testing.
if (sys.platform == "win32")
  gui.app:createstartmenushortcut{}

local notification = gui.Notification.create()
notification:settitle("Title")
notification:setbody("Message")
notification:setinfo("first-notification")
notification:show()
```



## Platform requirements

On macOS, only bundled apps can send notifications. To check if the app is
bundled, you can check whether `<!method>App::GetID()` returns a non-empty
string.

On Linux, `Notification` is implemented by sending DBus messages following the
[Desktop Notifications Specification](https://developer.gnome.org/notification-spec/),
the desktop environment must has a desktop notifications service running to
show the notifications.

On Windows, to display the notifications the app must has an AppUserModelID,
and a shortcut on the start menu. For testing purpose, you can use the
`<!method>App::CreateStartMenuShortcut(options)` API to create a start menu
shortcut file.

Also on Windows `Notification` uses toast notifications under the hood, and
currently only Windows 10 and above are supported.

[API Documentation](https://libyue.com/docs/latest/lua/api/notification.html#)
]]
---@class nu.Notification
nu.Notification = {}

--[[## Create a new Notification instance.



]]
---@return nu.Notification
function nu.Notification.create() end

--[[## Display the notification.

#### Details

If the notification has already been displayed, calling this method again
will update the contents of the notification. If the notification has been
closed, calling this method will show the notification again.

On Windows due to platform limitation, only the title and body of the
notification can be updated after it has been displayed.


]]
---@return nil
function nu.Notification:show() end

--[[## Close the notification.



]]
---@return nil
function nu.Notification:close() end

--[[## Set the title of the notification.



]]
---@param title string
---@return nil
function nu.Notification:settitle(title) end

--[[## Set the body text of the notification.



]]
---@param body string
---@return nil
function nu.Notification:setbody(body) end

--[[## Set the user info to be attached to the notification.

#### Details

When handling notification events with `<!type>NotificationCenter`, only
the user info will be passed to the event handler.


]]
---@param info string
---@return nil
function nu.Notification:setinfo(info) end

--[[## Return the attached user info.



]]
---@return string
function nu.Notification:getinfo() end

--[[## Set the buttons to be displayed in the notification.

#### Details

The `<!name>on_notification_action` event of `<!type>NotificationCenter`
will be emitted when user clicks one of the buttons.


]]
---@param actions table
---@return nil
function nu.Notification:setactions(actions) end

--[[## Set whether to play sound when the notification is displayed.



]]
---@param silent boolean
---@return nil
function nu.Notification:setsilent(silent) end

--[[## Set the image shown in the content of the notification.

#### Details

Different platforms may choose to put the image in different places, there
is no guarentee on where the image is placed.


]]
---@param image nu.Image
---@return nil
function nu.Notification:setimage(image) end

--[[## Set the file path of the image shown in the content of the notification.

#### Details

This method is usually faster than reading a file from disk and passing
its content to `<!name>SetImage`, so it is recommended to use this
method over `<!name>SetImage` if the image is stored on disk.

Different platforms may choose to put the image in different places, there
is no guarentee on where the image is placed.


]]
---@param path string
---@return nil
function nu.Notification:setimagepath(path) end

--[[## Set the `placement` attribute of the image.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
#### Details

The most common used `placement`s are `"appLogoOverride"` and `"hero"`.


]]
---@param placement string
---@return nil
function nu.Notification:setimageplacement(placement) end

--[[## Set whether to display an input field and a reply button in thenotification.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|
#### Details

The `<!name>on_notification_reply` event of `<!type>NotificationCenter`
will be emitted when user sends a reply in the notification.


]]
---@param has boolean
---@return nil
function nu.Notification:sethasreplybutton(has) end

--[[## The the placeholder of the input field.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|


]]
---@param placeholder string
---@return nil
function nu.Notification:setresponseplaceholder(placeholder) end

--[[## Set an unique `identifier` that can identifies a notification.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|
#### Details

When there is already a displayed notification with the same identifier,
showing this notification will update its contents.

On Windows due to platform limitation, only the title and body of the
notification can be updated after it has been displayed.

Note that there is no equivalent API on Linux, to update an existing
notification's contents you have to keep the instance of the notification
and call its `<!name>Show` method.


]]
---@param identifier string
---@return nil
function nu.Notification:setidentifier(identifier) end

--[[## Return the unique identifier of the notification.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|


]]
---@return string
function nu.Notification:getidentifier() end

--[[## Set custom XML of the toast notification.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
#### Details

On Windows the notification can have rich contents and the Notification
APIs do not cover all the possible features. In case you want to show
some rich contents, you can use this API to set raw XML of the
notification.

You can find documentation on the XML schema and tools to generate XML
at [here](https://docs.microsoft.com/en-us/windows/apps/design/shell/tiles-and-notifications/adaptive-interactive-toasts?tabs=xml).


]]
---@param xml string
---@return nil
function nu.Notification:setxml(xml) end

--[[## Return the XML representation of the toast notification.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|


]]
---@return string
function nu.Notification:getxml() end

--[[# KeyboardCode

### Codes of keyboard keys.

#### Details


Keyboard keys are represented with strings, in Yue we use the values of
HTML5 DOM's `KeyboardEvent.key` to represent the keys. A list of available
keys can be found at:
[Key Values - MDN](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/key/Key_Values).

There is an exception that the <kbd>Space Bar</kbd> is represented as
`"Space"` in Yue instead of `" "`.

[API Documentation](https://libyue.com/docs/latest/lua/api/keyboardcode.html#)
]]
---@class nu.KeyboardCode
nu.KeyboardCode = {}

---@alias nu.Scroll.Elasticity
---| "automatic"
---| "none"
---| "allowed"
--[[# PointF

### A point with x and y coordinate.

#### Details


This type is represented by a table with `x` and `y` properties.

```lua
painter:moveto{x=11, y=24}
```

When a function accepts `PointF` as its last parameter, you can simply
unpack `x` and `y`:

```lua
painter:moveto(11, 24)
```

[API Documentation](https://libyue.com/docs/latest/lua/api/pointf.html#)
]]
---@class nu.PointF
---@field x number X coordinate.
---@field y number Y coordinate.
nu.PointF = {}

---@alias nu.MenuItem.Role
---| "copy"
---| "cut"
---| "paste"
---| "select-all"
---| "undo"
---| "redo"
---| "minimize"
---| "maximize"
---| "close-window"
---| "about" Only available on macOS.
---| "hide" Only available on macOS.
---| "hide-others" Only available on macOS.
---| "unhide" Only available on macOS.
---| "help" Only available on macOS.
---| "window" Only available on macOS.
---| "services" Only available on macOS.
--[[# ProtocolFileJob

### Read file to serve custom protocol requests.


[API Documentation](https://libyue.com/docs/latest/lua/api/protocolfilejob.html#)
]]
---@class nu.ProtocolFileJob : nu.ProtocolJob
nu.ProtocolFileJob = {}

--[[## Create a `ProtocolFileJob` with `path` to a local file.



]]
---@param path string
---@return nu.ProtocolFileJob
function nu.ProtocolFileJob.create(path) end

--[[# ProtocolStringJob

### Use string as response to custom protocol requests.


[API Documentation](https://libyue.com/docs/latest/lua/api/protocolstringjob.html#)
]]
---@class nu.ProtocolStringJob : nu.ProtocolJob
nu.ProtocolStringJob = {}

--[[## Create a `ProtocolStringJob` with `mimetype` and `content`.



]]
---@param mimetype string
---@param content string
---@return nu.ProtocolStringJob
function nu.ProtocolStringJob.create(mimetype, content) end

--[[# ProtocolAsarJob

### Read asar archives to serve custom protocol requests.

#### Details

The asar format is a simple extensive archive format, information of it can be
found at https://github.com/electron/asar.

As an experimental feature, Yue supports reading from encrypted asar archives,
which has not been a standard feature of asar yet but will probably be in
future. More about this can be found at https://github.com/yue/muban.

[API Documentation](https://libyue.com/docs/latest/lua/api/protocolasarjob.html#)
]]
---@class nu.ProtocolAsarJob : nu.ProtocolJob
nu.ProtocolAsarJob = {}

--[[## Create a `ProtocolAsarJob` with `path` to a file inside an `asar` archive.



]]
---@param asar string
---@param path string
---@return nu.ProtocolAsarJob
function nu.ProtocolAsarJob.create(asar, path) end

--[[## Set the `key` and `iv` used to read from an encrypted asar archive, return`false` when the `key` and `iv` are not 16 bytes length.

#### Details

The encrypted asar archives use AES128 ECB algorithm for encryption, with
PKCS#7 padding.


]]
---@param key string
---@param iv string
---@return boolean
function nu.ProtocolAsarJob:setdecipher(key, iv) end

--[[# Event

### Generic input event type.


[API Documentation](https://libyue.com/docs/latest/lua/api/event.html#)
]]
---@class nu.Event
---@field type nu.EventType The type of the event.
---@field modifiers integer A bit array of keyboard modifiers of the event.
---@field timestamp integer Time when event was created, starts from when machine was booted.
nu.Event = {}

--[[## Return whether <kbd>Shift</kbd> key is pressed.



]]
---@return boolean
function nu.Event.isshiftpressed() end

--[[## Return whether <kbd>Control</kbd> key is pressed.



]]
---@return boolean
function nu.Event.iscontrolpressed() end

--[[## Return whether <kbd>Alt</kbd> key is pressed.



]]
---@return boolean
function nu.Event.isaltpressed() end

--[[## Return whether <kbd>Win</kbd> or <kbd>Command</kbd> key is pressed.



]]
---@return boolean
function nu.Event.ismetapressed() end

--[[## Return current mouse location in screen.



]]
---@return nu.PointF
function nu.Event.getmouselocation() end

--[[# Clipboard

### Native clipboard.

#### Details

The `Clipboard` class can not be created by user, its instance can only be
recevied by using the factory methods.



```lua
-- Get the default copy-paste clipboard.
local clipboard = gui.Clipboard.get()

-- Changing the content of clipboard with multiple formats of data.
clipboard:setdata{
  {type='text', value='some text'},
  {type='html', value='<strong>some text</strong>'},
  {type='image', value=gui.Image.createfrompath('...')},
  {type='file-paths', value={'/some/path'}},
}

-- Read data.
local data = clipboard:getdata('text')
if data.type == 'text' then
  print(data.value)
end
```



[API Documentation](https://libyue.com/docs/latest/lua/api/clipboard.html#)
]]
---@class nu.Clipboard
---@field onchange (fun(self: nu.Clipboard): nil) | nu.Signal Emitted when clipboard's content has been changed.
nu.Clipboard = {}

--[[## Return the default copy-paste clipboard.



]]
---@return nu.Clipboard
function nu.Clipboard.get() end

--[[## Return the clipboard with `type`.



]]
---@param type nu.Clipboard.Type
---@return nu.Clipboard
function nu.Clipboard.fromtype(type) end

--[[## Clear the clipboard.



]]
---@return nil
function nu.Clipboard:clear() end

--[[## Set `text` as clipboard's content.



]]
---@param text string
---@return nil
function nu.Clipboard:settext(text) end

--[[## Return the content of clipboard as text.



]]
---@return string
function nu.Clipboard:gettext() end

--[[## Return whether the data of `type` is available.



]]
---@param type nu.Clipboard.Data.Type
---@return boolean
function nu.Clipboard:isdataavailable(type) end

--[[## Get the data of `type` from clipboard.

#### Details

You should always check the type of returned data before using it.

]]
---@param type nu.Clipboard.Data.Type
---@return nu.Clipboard.Data
function nu.Clipboard:getdata(type) end

--[[## Set clipboard's content.



]]
---@param objects table
---@return nil
function nu.Clipboard:setdata(objects) end

--[[## Start watching clipboard's content.

#### Details

The `<!name>on_change` event will be emitted when clipboard's content has
been changed.

On macOS, due to lack of system notifications for clipboard events, this
event is implemented by polling every 500ms.


]]
---@return nil
function nu.Clipboard:startwatching() end

--[[## Stop watching clipboard's content.



]]
---@return nil
function nu.Clipboard:stopwatching() end

--[[# MessageBox

### A window showing some text and buttons.


[API Documentation](https://libyue.com/docs/latest/lua/api/messagebox.html#)
]]
---@class nu.MessageBox
---@field onresponse (fun(self: nu.MessageBox, response: integer): nil) | nu.Signal Emitted when the message box is closed.
nu.MessageBox = {}

--[[## Create a message box.



]]
---@return nu.MessageBox
function nu.MessageBox.create() end

--[[## Show the message box and wait for result. Response ID will be returned.



]]
---@return integer
function nu.MessageBox:run() end

--[[## Show the message box as a child for `window` and wait for result.Response ID will be returned.



]]
---@param window nu.Window
---@return integer
function nu.MessageBox:runforwindow(window) end

--[[## Show the message box. The `<!name>on_response` event will be emitted whenthe message box is closed.

| ❗ This method is only available on the following platforms: Windows, Linux ❗ |
|---------------------------------------------------------------------------------|


]]
---@return nil
function nu.MessageBox:show() end

--[[## Show the message box as a child of `window`. The `<!name>on_response`event will be emitted when the message box is closed.



]]
---@param window nu.Window
---@return nil
function nu.MessageBox:showforwindow(window) end

--[[## Close the message box. The cancel response ID will be used as result.



]]
---@return nil
function nu.MessageBox:close() end

--[[## Set the `type` of message box, system will show the corresponding icon inthe message box.

#### Details

On macOS there is no visual difference between `information` and `warning`
types.
On Linux this method has no effect if a custom icon has been set.


]]
---@param type nu.MessageBox.Type
---@return nil
function nu.MessageBox:settype(type) end

--[[## Set the message box window's title.

| ❗ This method is only available on the following platforms: Windows, Linux ❗ |
|---------------------------------------------------------------------------------|


]]
---@param title string
---@return nil
function nu.MessageBox:settitle(title) end

--[[## Add a button with `title`. The `response` ID will be used as result whenthe button is clicked.



]]
---@param title string
---@param response integer
---@return nil
function nu.MessageBox:addbutton(title, response) end

--[[## Set the default `response` ID, when user presses the <kbd>Enter</kbd> keythe button associated with the ID will be clicked.



]]
---@param response integer
---@return nil
function nu.MessageBox:setdefaultresponse(response) end

--[[## Set the cancel `response` ID that will be used as result  when userpresses the <kbd>Esc</kbd> key or when the window is closed withoutclicking any button.

#### Details

The default cancel response ID is -1.

]]
---@param response integer
---@return nil
function nu.MessageBox:setcancelresponse(response) end

--[[## Set the message box's message text.



]]
---@param text string
---@return nil
function nu.MessageBox:settext(text) end

--[[## Set informative text that will show bellow the message text.



]]
---@param text string
---@return nil
function nu.MessageBox:setinformativetext(text) end

--[[## Set the accessory `view` that will be placed between the text and thebuttons. The `view` must be given a size before being used as accessoryview.

| ❗ This method is only available on the following platforms: macOS, Linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@param view nu.View
---@return nil
function nu.MessageBox:setaccessoryview(view) end

--[[## Return the accessory view.

| ❗ This method is only available on the following platforms: macOS, Linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@return nu.View
function nu.MessageBox:getaccessoryview() end

--[[## Set the custom icon displayed in the message box.

#### Details

On macOS the default icon is the app's icon, on Windows and Linux there
is no default icon.


]]
---@param image nu.Image
---@return nil
function nu.MessageBox:setimage(image) end

--[[## Return the custom icon.



]]
---@return nu.Image
function nu.MessageBox:getimage() end

--[[# DragOperation

### Operations of dragging.

#### Details

The `DragOperation` are integer masks that can be operated with bitwise
operators.

The `None` operation means dragging is not allowed, and it should not be used
together with other operations.

The values of `DragOperation` are available as the class properties of the
`<!type>DraggingInfo` class.

[API Documentation](https://libyue.com/docs/latest/lua/api/dragoperation.html#)
]]
---@class nu.DragOperation
nu.DragOperation = {}

--[[# MessageLoop

### Post events to main GUI message loop.

#### Details

Depending on the runtime you use, Yue may or may not provide this API.

Note that `MessageLoop` is a class instead of an instance, the APIs are
provided as class methods. This is because the `MessageLoop` does not manage
message loop, it just provides wrappers of system GUI message loop APIs.

This class can not be created by user, you can only call its class methods.

```lua
local gui = require('yue.gui')
gui.MessageLoop.run()
```

[API Documentation](https://libyue.com/docs/latest/lua/api/messageloop.html#)
]]
---@class nu.MessageLoop
nu.MessageLoop = {}

--[[## Enter GUI message loop.



]]
---@return nil
function nu.MessageLoop.run() end

--[[## Quit current message loop.



]]
---@return nil
function nu.MessageLoop.quit() end

--[[## Post a `task` to main thread's message loop.



]]
---@param task function
---@return nil
function nu.MessageLoop.posttask(task) end

--[[## Post a `task` to main thread's message loop and execute it after `ms`.



]]
---@param ms integer
---@param task function
---@return nil
function nu.MessageLoop.postdelayedtask(ms, task) end

--[[## Enqueue a task `task` to be run multiple times on the main thread'smessage loop, delaying every `ms` miliseconds, and stopping if the taskreturns `false`.



]]
---@param ms integer
---@param task function
---@return nil
function nu.MessageLoop.settimer(ms, task) end

--[[# ComboBox

### Choose a single item from a list of items or type a custom value.

#### Details

The `ComboBox` behaves differently from `Picker` that:
1. no item is selected by default;
2. duplicate items are allowed.

[API Documentation](https://libyue.com/docs/latest/lua/api/combobox.html#)
]]
---@class nu.ComboBox : nu.Picker
---@field ontextchange (fun(self: nu.Entry): nil) | nu.Signal Emitted when user has changed text.
nu.ComboBox = {}

--[[## Create a new `ComboBox` view.



]]
---@return nu.ComboBox
function nu.ComboBox.create() end

--[[## Change the text in the view.



]]
---@param text string
---@return nil
function nu.ComboBox:settext(text) end

--[[## Return currently displayed text.



]]
---@return string
function nu.ComboBox:gettext() end

--[[# AttributedText

### Text with styles.

#### Details

On Windows, due to the limitations of GdiPlus, it is only supported to change
the whole text's color and font, i.e. the `SetFontFor` and `SetColorFor` APIs
are unsupported.

[API Documentation](https://libyue.com/docs/latest/lua/api/attributedtext.html#)
]]
---@class nu.AttributedText
nu.AttributedText = {}

--[[## Create an `AttributedText`.



]]
---@param text string
---@param attributes nu.TextAttributes
---@return nu.AttributedText
function nu.AttributedText.create(text, attributes) end

--[[## Overwrite styles with `format`.



]]
---@param format nu.TextFormat
---@return nil
function nu.AttributedText:setformat(format) end

--[[## Return current styles.



]]
---@return nu.TextFormat
function nu.AttributedText:getformat() end

--[[## Set the whole text's `font`.



]]
---@param font nu.Font
---@return nil
function nu.AttributedText:setfont(font) end

--[[## Set the `font` of text between character range `[start, end)`. Passing`-1` as `end` means the rest of the text.

| ❗ This method is only available on the following platforms: macOS, Linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@param font nu.Font
---@param start integer
---@param _end integer
---@return nil
function nu.AttributedText:setfontfor(font, start, _end) end

--[[## Set the whole text's `color`.



]]
---@param color nu.Color
---@return nil
function nu.AttributedText:setcolor(color) end

--[[## Set the `color` of text between character range `[start, end)`. Passing`-1` as `end` means the rest of the text.

| ❗ This method is only available on the following platforms: macOS, Linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@param font nu.Color
---@param start integer
---@param _end integer
---@return nil
function nu.AttributedText:setcolorfor(font, start, _end) end

--[[## Reset font and color to system default.



]]
---@return nil
function nu.AttributedText:clear() end

--[[## Return the bounds required to draw the text within `size`.



]]
---@param size nu.SizeF
---@return nu.RectF
function nu.AttributedText:getboundsfor(size) end

--[[## Change the text content.



]]
---@param text string
---@return nil
function nu.AttributedText:settext(text) end

--[[## Return the plain text.



]]
---@return string
function nu.AttributedText:gettext() end

--[[# FileSaveDialog

### Dialog used for saveing files.


[API Documentation](https://libyue.com/docs/latest/lua/api/filesavedialog.html#)
]]
---@class nu.FileSaveDialog : nu.FileDialog
nu.FileSaveDialog = {}

--[[## Create an save dialog.



]]
---@return nu.FileSaveDialog
function nu.FileSaveDialog.create() end

--[[# View

### Base class for GUI components.

#### Details

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
nu.View = {}

--[[## Return offset from `view`.



]]
---@param view nu.View
---@return nu.Vector2dF
function nu.View:offsetfromview(view) end

--[[## Return offset from the window that owns the view.



]]
---@return nu.Vector2dF
function nu.View:offsetfromwindow() end

--[[## Return the position and size of the view, relative to its parent.



]]
---@return nu.RectF
function nu.View:getbounds() end

--[[## Return the position and size of the view in the screen.



]]
---@return nu.RectF
function nu.View:getboundsinscreen() end

--[[## Make the view re-recalculate its layout.



]]
---@return nil
function nu.View:layout() end

--[[## Schedule to repaint the whole view.



]]
---@return nil
function nu.View:schedulepaint() end

--[[## Schedule to repaint the `rect` area in view.



]]
---@param rect nu.RectF
---@return nil
function nu.View:schedulepaintrect(rect) end

--[[## Show/Hide the view.



]]
---@param visible boolean
---@return nil
function nu.View:setvisible(visible) end

--[[## Return whether the view is visible.



]]
---@return boolean
function nu.View:isvisible() end

--[[## Return whether the view and its ancestors are visible.



]]
---@return boolean
function nu.View:isvisibleinhierarchy() end

--[[## Set whether the view is enabled.

#### Details

The enabled state of each view is not affected by its parent, disabling
a container-like view does not have any effect.


]]
---@param enable boolean
---@return nil
function nu.View:setenabled(enable) end

--[[## Return whether the view is enabled.



]]
---@return boolean
function nu.View:isenabled() end

--[[## Move the keyboard focus to the view.



]]
---@return nil
function nu.View:focus() end

--[[## Return whether the view has keyboard focus.



]]
---@return boolean
function nu.View:hasfocus() end

--[[## Set whether the view can be focused on.



]]
---@param focusable boolean
---@return nil
function nu.View:setfocusable(focusable) end

--[[## Return whether the view can be focused on.



]]
---@return boolean
function nu.View:isfocusable() end

--[[## Set whether dragging mouse would move the window.

#### Details

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
function nu.View:setmousedowncanmovewindow(can) end

--[[## Return whether dragging the view would move the window.



]]
---@return boolean
function nu.View:ismousedowncanmovewindow() end

--[[## Like `DoDragWithOptions` but do not set drag image.



]]
---@param data table
---@param operations integer
---@return integer
function nu.View:dodrag(data, operations) end

--[[## Start a drag session.

#### Details

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
function nu.View:dodragwithoptions(data, operations, options) end

--[[## Cancel current drag session if the view is being used as drag source.



]]
---@return nil
function nu.View:canceldrag() end

--[[## Return whether the view is being used as drag source.



]]
---@return boolean
function nu.View:isdragging() end

--[[## Make the view a drag destination that accepets `types`.



]]
---@param types table
---@return nil
function nu.View:registerdraggedtypes(types) end

--[[## Set the cursor to show when hovering the view.

#### Details

On Linux, setting cursor would force the view to own its own GDK window.
For certain views like `Label`, this may have remove the view's background
color.


]]
---@param cursor nu.Cursor
---@return nil
function nu.View:setcursor(cursor) end

--[[## Set the `tooltip` for the view.

#### Details

This method will clear all tooltips added by `<!name>AddTooltipForRect`.


]]
---@param tooltip string
---@return nil
function nu.View:settooltip(tooltip) end

--[[## Add `tooltip` for a defined `rect` in the view and return an ID for it.



]]
---@param tooltip string
---@param rect nu.RectF
---@return integer
function nu.View:addtooltipforrect(tooltip, rect) end

--[[## Remove tooltip added by `<!name>AddTooltipForRect` with `id`.



]]
---@param id integer
---@return nil
function nu.View:removetooltip(id) end

--[[## Change the font used for drawing text in the view.

#### Details

This methods only works for `View`s that display text, like `Label` or
`Entry`.


]]
---@param font nu.Font
---@return nil
function nu.View:setfont(font) end

--[[## Change the color used for drawing text in the view.

#### Details

This methods only works for `View`s that display text, like `Label` or
`Entry`.


]]
---@param color nu.Color
---@return nil
function nu.View:setcolor(color) end

--[[## Change the background color of the view.



]]
---@param color nu.Color
---@return nil
function nu.View:setbackgroundcolor(color) end

--[[## Change the styles of the view.

#### Details

Available style properties can be found at
[Layout System](../guides/layout_system.html).


]]
---@param styles table
---@return nil
function nu.View:setstyle(styles) end

--[[## Return string representation of the view's layout.



]]
---@return string
function nu.View:getcomputedlayout() end

--[[## Return the minimum size needed to show the view.



]]
---@return nu.SizeF
function nu.View:getminimumsize() end

--[[## Return parent view.



]]
---@return nu.View
function nu.View:getparent() end

--[[## Return the window that the view belongs to.



]]
---@return nu.Window
function nu.View:getwindow() end

--[[# Display

### Information of monitor.


[API Documentation](https://libyue.com/docs/latest/lua/api/display.html#)
]]
---@class nu.Display
---@field id integer An unique ID of the monitor.
---@field scalefactor number Output device's pixel scale factor.
---@field internal boolean Whether this is an internal display.
---@field bounds nu.RectF The display's bounds.
---@field workarea nu.RectF The work area's bounds.
nu.Display = {}

--[[# Image

### Native image.

#### Details

## High DPI Image

By appending `@{scaleFactor}x` to the image's base filename, you can mark
the image as a high DPI image. For example an image file with filename of
`icon@2x.png` will have scale factor of 2.

## Template Image

On macOS you can mark an image as template image by putting `Template` to
its base filename, for example `iconTemplate.png` and `iconTemplate@2x.png`.

Template images should consist of only black and clear colors, and macOS will
mix with other content to create best appearance. This is useful for tray
icons and menu item icons that automatically adjust to light and dark themes.

[API Documentation](https://libyue.com/docs/latest/lua/api/image.html#)
]]
---@class nu.Image
nu.Image = {}

--[[## Create an empty image.



]]
---@return nu.Image
function nu.Image.createempty() end

--[[## Create an image by reading from `path`.



]]
---@param path string
---@return nu.Image
function nu.Image.createfrompath(path) end

--[[## Create an image from `buffer` in memory, with `scale_factor`.



]]
---@param buffer string
---@param scalefactor number
---@return nu.Image
function nu.Image.createfrombuffer(buffer, scalefactor) end

--[[## Make the image empty.

#### Details

On Windows creating an image from filesystem path will also lock the
file, by calling this method the image file will be unlocked.
The original image file will not be modified, and APIs that accepted
this image will not be affected.


]]
---@return nil
function nu.Image:clear() end

--[[## Return whether the image has any data.



]]
---@return boolean
function nu.Image:isempty() end

--[[## Set whether the image is a template image.



]]
---@param is boolean
---@return nil
function nu.Image:settemplate(is) end

--[[## Return whether the image is a template image.



]]
---@return boolean
function nu.Image:istemplate() end

--[[## Return image's size in DIP.



]]
---@return nu.SizeF
function nu.Image:getsize() end

--[[## Return image's scale factor.



]]
---@return number
function nu.Image:getscalefactor() end

--[[## Return a new image that has tint color applied.

#### Details

On Windows the tint color is applied by using color matrix, while other
platforms use `<!enum class>SourceAtop` blend mode. So the result image
might very likely look different on Windows.


]]
---@param color nu.Color
---@return nu.Image
function nu.Image:tint(color) end

--[[## Return a new image resized to `new_size` with `scale_factor`.



]]
---@param newsize nu.SizeF
---@param scalefactor number
---@return nu.Image
function nu.Image:resize(newsize, scalefactor) end

--[[## Return a buffer containing the image's PNG encoded data.



]]
---@return string
function nu.Image:topng() end

--[[## Return a buffer containing the image's JPEG encoded data.



]]
---@param quality integer
---@return string
function nu.Image:tojpeg(quality) end

--[[# TextEdit

### Plain text input view.

#### Details

The selection range in `TextEdit` use 0-based index, the `start` and `end`
both start from 0, and `end` is the index of the character after the range.

Using -1 as `end` means the end of the text.

The range uses character index instead of byte index, be careful when using
programming languages without Unicode support.

[API Documentation](https://libyue.com/docs/latest/lua/api/textedit.html#)
]]
---@class nu.TextEdit : nu.View
---@field ontextchange (fun(self: nu.TextEdit): nil) | nu.Signal Emitted when user has changed text.
---@field shouldinsertnewline (fun(self: nu.TextEdit): boolean) Called when user presses `Return` to insert new line, should return whether it is allowed.
nu.TextEdit = {}

--[[## Create a new `TextEdit`.



]]
---@return nu.TextEdit
function nu.TextEdit.create() end

--[[## Change the text in the view.



]]
---@param text string
---@return nil
function nu.TextEdit:settext(text) end

--[[## Return currently displayed text.



]]
---@return string
function nu.TextEdit:gettext() end

--[[## Undo the last edit operation in the undo queue.



]]
---@return nil
function nu.TextEdit:undo() end

--[[## Return whether there are any actions in undo queue.



]]
---@return nil
function nu.TextEdit:canundo() end

--[[## Redo the next action in the redo queue



]]
---@return nil
function nu.TextEdit:redo() end

--[[## Return whether there are any actions in redo queue.



]]
---@return nil
function nu.TextEdit:canredo() end

--[[## Delete (cut) the current selection, if any, copy the deleted text to theclipboard.



]]
---@return nil
function nu.TextEdit:cut() end

--[[## Copy current selection to clipboard.



]]
---@return nil
function nu.TextEdit:copy() end

--[[## Copy the current content of the clipboard to current caret position.



]]
---@return nil
function nu.TextEdit:paste() end

--[[## Select all text.



]]
---@return nil
function nu.TextEdit:selectall() end

--[[## Return the start position and end position of current selection.If nothing is selected, the cursor position will be returned as both values, ie. (0, 0).



]]
---@return nu.std.tuple
function nu.TextEdit:getselectionrange() end

--[[## Select text between `start` and `end` positions.



]]
---@param start integer
---@param _end integer
---@return nil
function nu.TextEdit:selectrange(start, _end) end

--[[## Return the text between `start` and `end` positions.



]]
---@param start integer
---@param _end integer
---@return string
function nu.TextEdit:gettextinrange(start, _end) end

--[[## Insert `text` at current caret position.



]]
---@param text string
---@return nil
function nu.TextEdit:inserttext(text) end

--[[## Insert `text` at the `position`.



]]
---@param text string
---@param position integer
---@return nil
function nu.TextEdit:inserttextat(text, position) end

--[[## Delete text of current selection.



]]
---@return nil
function nu.TextEdit:delete() end

--[[## Delete text between `start` and `end` positions.



]]
---@param start integer
---@param _end integer
---@return nil
function nu.TextEdit:deleterange(start, _end) end

--[[## Set whether to use overlay scrolling.

| ❗ This method is only available on the following platforms: macOS, linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@param overlay boolean
---@return nil
function nu.TextEdit:setoverlayscrollbar(overlay) end

--[[## Set the policy for displaying horizontal and vertical scrollbars.



]]
---@param hpolicy nu.Scroll.Policy
---@param vpolicy nu.Scroll.Policy
---@return nil
function nu.TextEdit:setscrollbarpolicy(hpolicy, vpolicy) end

--[[## Set horizontal and vertical scroll elasticity (bounce).

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param helasticity nu.Scroll.Elasticity
---@param velasticity nu.Scroll.Elasticity
---@return nil
function nu.TextEdit:setscrollelasticity(helasticity, velasticity) end

--[[## Return the horizontal and vertical scroll elasticity.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return nu.std.tuple
function nu.TextEdit:getscrollelasticity() end

--[[## Return the text extend.



]]
---@return nu.RectF
function nu.TextEdit:gettextbounds() end

--[[# MouseEvent

### Mouse event.


[API Documentation](https://libyue.com/docs/latest/lua/api/mouseevent.html#)
]]
---@class nu.MouseEvent : nu.Event
---@field button integer The mouse button being pressed, `1` is for left button, `2` is for right button, `3` is for middle button.
---@field positioninview nu.PointF Relative position inside the view where the event happened.
---@field positioninwindow nu.PointF Relative position inside the window.
nu.MouseEvent = {}

---@alias nu.Vibrant.Material
---| "appearance-based"
---| "light"
---| "dark"
---| "titlebar"
---| "selection"
---| "menu"
---| "popover"
---| "sidebar"
---| "header-view"
---| "sheet"
---| "window-background"
---| "hudwindow"
---| "fullscreen-ui"
---| "tooltip"
---| "content-background"
---| "under-window-background"
---| "under-page-background"
--[[# Appearance

### Information about user's appearance preferences.

#### Details


This class can not be created by user, you can only receive its global
instance from the `appearance` property of the module:

```lua
gui.appearance:isdarkscheme()
```

[API Documentation](https://libyue.com/docs/latest/lua/api/appearance.html#)
]]
---@class nu.Appearance
---@field oncolorschemechange (fun(): nil) | nu.Signal Emitted when user has changed system color scheme preferences.
nu.Appearance = {}

--[[## Enable Windows 10 dark mode for current app.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
#### Details

The dark mode of Windows 10 does not support Win32 apps officially and
this API makes use of private APIs to force enabling dark mode for current
app.

Note that this API can only enable dark mode for window titlebars, all
the views and colors are still using light color schemes. You should only
use this API when developing custom-drawn apps.


]]
---@param enable boolean
---@return nil
function nu.Appearance:setdarkmodeenabled(enable) end

--[[## Return whether this app is using a dark color scheme.

#### Details

Note that on Windows the dark mode does not support Win32 apps, and this
method will always return false unless dark mode is explicitly enabled
with `<!name>SetDarkModeEnabled`.


]]
---@return boolean
function nu.Appearance:isdarkscheme() end

--[[# Label

### Display text.


[API Documentation](https://libyue.com/docs/latest/lua/api/label.html#)
]]
---@class nu.Label : nu.View
nu.Label = {}

--[[## Create a new `Label` with `text`.



]]
---@param text string
---@return nu.Label
function nu.Label.create(text) end

--[[## Create a new `Label` with attributed `text`.



]]
---@param text nu.AttributedText
---@return nu.Label
function nu.Label.createwithattributedtext(text) end

--[[## Set the text to display.



]]
---@param text string
---@return nil
function nu.Label:settext(text) end

--[[## Return the text displayed.



]]
---@return string
function nu.Label:gettext() end

--[[## Set horizontal text alignment.



]]
---@param align nu.TextAlign
---@return nil
function nu.Label:setalign(align) end

--[[## Set vertical text alignment.



]]
---@param align nu.TextAlign
---@return nil
function nu.Label:setvalign(align) end

--[[## Set the attributed text to display.



]]
---@param text nu.AttributedText
---@return nil
function nu.Label:setattributedtext(text) end

--[[## Return the attributed text displayed.



]]
---@return nu.AttributedText
function nu.Label:getattributedtext() end

---@alias nu.Button.Type
---| "normal"
---| "checkbox"
---| "radio"
---| "disclosure" Only available on macOS.
--[[# NotificationCenter.COMServerOptions

### Options for creating COM server.


[API Documentation](https://libyue.com/docs/latest/lua/api/notificationcenter.comserveroptions.html#)
]]
---@class nu.NotificationCenter.COMServerOptions
---@field writeregistry boolean Whether to register COM server in registry automatically when any event of `NotificationCenter` is subscribed. Default is `true`.
---@field arguments string The arguments to pass to the executable when system starts the app after a notification is activated. Default is empty string.
---@field toastactivatorclsid string The `ToastActivatorCLSID`, which can be generated with `uuidgen.exe`. It must include a pair of curly braces. If not specified, one will be automatically generated from the app's `AppUserModelID`.
nu.NotificationCenter.COMServerOptions = {}
--[[# DragOptions

### Options for starting a drag operation.


[API Documentation](https://libyue.com/docs/latest/lua/api/dragoptions.html#)
]]
---@class nu.DragOptions
---@field image nu.Image The image that will show under cursor when dragging.
nu.DragOptions = {}

--[[# Tray

### Tray item displayed in system notification area.

#### Details

Platform limitations:

* On Linux tray items are displayed as app indicators.
* On Linux there is no fallback when app indicators are not supported.
* On Linux app indicator can only show when it has menu attached.
* On Windows you have to explicitly remove the tray item on exit, otherwise
  a zombie icon would be left.

[API Documentation](https://libyue.com/docs/latest/lua/api/tray.html#)
]]
---@class nu.Tray
---@field onclick (fun(self: nu.Tray): nil) | nu.Signal Emitted when the tray item is clicked.
nu.Tray = {}

--[[## Create a tray item with `icon`.



]]
---@param icon nu.Image
---@return nu.Tray
function nu.Tray.createwithimage(icon) end

--[[## Create a tray item with only `title`.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param title string
---@return nu.Tray
function nu.Tray.createwithtitle(title) end

--[[## Remove the tray item.



]]
---@return nil
function nu.Tray:remove() end

--[[## Return the position and size of the tray item.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|


]]
---@return nu.RectF
function nu.Tray:getbounds() end

--[[## Set title to be displayed aside item's icon.

| ❗ This method is only available on the following platforms: macOS, Linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@param title string
---@return nil
function nu.Tray:settitle(title) end

--[[## Set the `icon` of tray item.



]]
---@param icon nu.Image
---@return nil
function nu.Tray:setimage(icon) end

--[[## Set the `image` to show when tray item is pressed.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param image nu.Image
---@return nil
function nu.Tray:setpressedimage(image) end

--[[## Set the menu attached with the tray item.

#### Details

On most platforms the menu will show when clicking on the icon, while on
Windows the menu will only show when when right-clicking on the icon.


]]
---@param menu nu.Menu
---@return nil
function nu.Tray:setmenu(menu) end

--[[## Return the menu attached.



]]
---@return nu.Menu
function nu.Tray:getmenu() end

--[[# Cookie

### Browser cookie.


[API Documentation](https://libyue.com/docs/latest/lua/api/cookie.html#)
]]
---@class nu.Cookie
---@field name string
---@field value string
---@field domain string
---@field path string
---@field httponly boolean
---@field secure boolean
nu.Cookie = {}

--[[# NotificationCenter

### Handle events of notifications.

#### Details

The `NotificationCenter` API is responsible for handling events of
notifications, for sending notifications, the `<!type>Notification` API should
be used.

For most platforms, the notifications will persist after the app is quit, so
the source notification of the received event may be sent by other instances
of the app. For this reason, you do not get the source `Notification` instance
when handling events, and you should not do bookkeeping to try to do so.

To pass information in notifications, you should use
`<!method>Notification::SetInfo(info)` to store a custom string, which will
be passed to the event handlers of `NotificationCenter`.



```lua
function app.notificationcenter.onnotificationclick(info)
  print(info)
end
```



## Linux notices

On Windows and macOS, clicking a notification will start the app that sent
the notification, but this feature has not been implemented on Linux yet.

On Linux due to the limitation of
[Desktop Notifications Specification](https://developer.gnome.org/notification-spec/),
the custom information attached to the notification is not persisted after
the app is quit, so if a notification is sent by other instances of the app,
the `info` parameter will be empty in its events.

## Windows notices

On Windows receiving notification events is implemented by starting a COM
server, which is started automatcially when any event is subscribed.

The COM server must has a `ToastActivatorCLSID`, which will be automatcially
generated from the app's `AppUserModelID` if non is specified. It is
recommended to use `uuidgen.exe` to generate one and set it explicitly
with `<!method>NotificationCenter::SetCOMServerOptions(options)`.

For the COM server to receive events from Action Center, there must be a start
menu shortcut, with `AppUserModelID` and `ToastActivatorCLSID` properties
assigned to it. The `<!method>App::CreateStartMenuShortcut(options)` API can be
used to create one for testing.

It is also possible to start the app by clicking the notification, after the
app has quit, but it requires registering the COM server in registry, which
is done automatcially when any event is subscribed. This behavior can be
turned off with `<!method>NotificationCenter::SetCOMServerOptions(options)`,
and the item in registry can be removed with
`<!method>NotificationCenter::RemoveCOMServerFromRegistry()`.

[API Documentation](https://libyue.com/docs/latest/lua/api/notificationcenter.html#)
]]
---@class nu.NotificationCenter
---@field onnotificationshow (fun(info: string): nil) | nu.Signal Emitted when a notification has been displayed, the custom `info` of the notification is passed.
---@field onnotificationclose (fun(info: string): nil) | nu.Signal Emitted when a notification has been closed without activation, the custom `info` of the notification is passed.
---@field onnotificationclick (fun(info: string): nil) | nu.Signal Emitted when user clicks on the body of a notification, the custom `info` of the notification is passed.
---@field onnotificationaction (fun(actioninfo: string): nil) | nu.Signal Emitted when user clicks on an action button of a notification, the custom `<!name>action_info` string of the action button is passed.
---@field onnotificationreply (fun(info: string, reply: string): nil) | nu.Signal Emitted when user sends a text using inline reply in a notification, the custom `info` of the notification, and the `reply` string will be passed.
---@field ontoastactivate (fun(appusermodelid: string, invokedargs: string, data: table): boolean) | nu.Signal Emitted when the notification activator COM server receives the Activate message.
nu.NotificationCenter = {}

--[[## Remove all notifications sent by this app.

#### Details

Due to the limitations of system APIs, on Linux only notifications created
by current process can be cleared, and on Windows clearing notifications
won't emit the `<!name>on_notification_close` event.


]]
---@return nil
function nu.NotificationCenter:clear() end

--[[## Set COM server related options, `false` will be returned if the passed`ToastActivatorCLSID` is invalid.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
#### Details

This API should be only called before subscribing to any event.

]]
---@param options nu.NotificationCenter.COMServerOptions
---@return boolean
function nu.NotificationCenter:setcomserveroptions(options) end

--[[## Register the COM server.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
#### Details

Usually the COM server is automatcially registered when any event is
subscribed, but this API can be used to register COM server manully if
`<!name>write_registry` is set to `false` in `<!name>SetCOMServerOptions`.


]]
---@return boolean
function nu.NotificationCenter:registercomserver() end

--[[## Remove the app's COM server from registry.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|


]]
---@return nil
function nu.NotificationCenter:removecomserverfromregistry() end

--[[## Return current `ToastActivatorCLSID`.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|


]]
---@return string
function nu.NotificationCenter:gettoastactivatorclsid() end

--[[# DraggingInfo

### Information about a dragging session.

#### Details

This class can not be created by user, its instance can only be received in
the drag and drop events.

[API Documentation](https://libyue.com/docs/latest/lua/api/dragginginfo.html#)
]]
---@class nu.DraggingInfo
nu.DraggingInfo = {}

--[[## Return whether the data of `type` is available.

#### Details

On Linux the dragged data is only available in the `handle_drop` delegate.


]]
---@param type nu.Clipboard.Data.Type
---@return boolean
function nu.DraggingInfo:isdataavailable(type) end

--[[## Get the data of `type` from clipboard.

#### Details

On Linux the dragged data is only available in the `handle_drop` delegate.

You should always check the type of returned data before using it.


]]
---@param type nu.Clipboard.Data.Type
---@return nu.Clipboard.Data
function nu.DraggingInfo:getdata(type) end

--[[## Return the drag operation supported by drag source.

#### Details

Most drag sources support multiple types of operations, you should always
check whether an operation is supported by using bitwise AND operator.


]]
---@return integer
function nu.DraggingInfo:getdragoperations() end

--[[# Separator

### A horizontal or vertical line.


[API Documentation](https://libyue.com/docs/latest/lua/api/separator.html#)
]]
---@class nu.Separator : nu.View
nu.Separator = {}

--[[## Create a new `Separator` with `orientation`.



]]
---@param orientation nu.Orientation
---@return nu.Separator
function nu.Separator.create(orientation) end

---@alias nu.ControlSize
---| "mini"
---| "small"
---| "regular"
---| "large"
--[[# Cursor

### Native cursor.


[API Documentation](https://libyue.com/docs/latest/lua/api/cursor.html#)
]]
---@class nu.Cursor
nu.Cursor = {}

--[[## Create a cursor of `type`.



]]
---@param type nu.Cursor.Type
---@return nu.Font
function nu.Cursor.createwithtype(type) end

--[[# KeyEvent

### Keyboard event.


[API Documentation](https://libyue.com/docs/latest/lua/api/keyevent.html#)
]]
---@class nu.KeyEvent : nu.Event
---@field key nu.KeyboardCode The key associated with the event.
nu.KeyEvent = {}

--[[# Scroll

### Show a part of view with scrollbar.

#### Details

The `Scroll` view can show an arbitrary content view inside it.

When the content is larger than the `Scroll` view, scrollbars will be
optionally showed. When the content view is smaller then the `Scroll` view,
the content view will be resized to the size of the `Scroll` view.

[API Documentation](https://libyue.com/docs/latest/lua/api/scroll.html#)
]]
---@class nu.Scroll : nu.View
---@field onscroll (fun(self: nu.Scroll): nil) | nu.Signal Emitted when the content view is being scrolled.
nu.Scroll = {}

--[[## Create a new `Scroll` view.



]]
---@return nu.Scroll
function nu.Scroll.create() end

--[[## Set the content `view`.



]]
---@param view nu.View
---@return nil
function nu.Scroll:setcontentview(view) end

--[[## Return the content `view`.



]]
---@return nu.View
function nu.Scroll:getcontentview() end

--[[## Set the size of content view.



]]
---@param size nu.SizeF
---@return nil
function nu.Scroll:setcontentsize(size) end

--[[## Return the size of content view.



]]
---@return nu.SizeF
function nu.Scroll:getcontentsize() end

--[[## Scroll to the `horizon` and `vertical` position.



]]
---@param horizon number
---@param vertical number
---@return nil
function nu.Scroll:setscrollposition(horizon, vertical) end

--[[## Return the horizon and vertical scroll position.



]]
---@return nu.std.tuple
function nu.Scroll:getscrollposition() end

--[[## Return the maximum horizon and vertical scroll position.



]]
---@return nu.std.tuple
function nu.Scroll:getmaximumscrollposition() end

--[[## Set whether to use overlay scrolling.

| ❗ This method is only available on the following platforms: macOS, linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@param overlay boolean
---@return nil
function nu.Scroll:setoverlayscrollbar(overlay) end

--[[## Return whether overlay scrolling is used.

| ❗ This method is only available on the following platforms: macOS, linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@return boolean
function nu.Scroll:isoverlayscrollbar() end

--[[## Set the policy for displaying horizontal and vertical scrollbars.



]]
---@param hpolicy nu.Scroll.Policy
---@param vpolicy nu.Scroll.Policy
---@return nil
function nu.Scroll:setscrollbarpolicy(hpolicy, vpolicy) end

--[[## Return the display policy of horizontal and vertical scrollbars.



]]
---@return nu.std.tuple
function nu.Scroll:getscrollbarpolicy() end

--[[## Set horizontal and vertical scroll elasticity (bounce).

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param helasticity nu.Scroll.Elasticity
---@param velasticity nu.Scroll.Elasticity
---@return nil
function nu.Scroll:setscrollelasticity(helasticity, velasticity) end

--[[## Return the horizontal and vertical scroll elasticity.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return nu.std.tuple
function nu.Scroll:getscrollelasticity() end

--[[# DatePicker

### A view displays date and time with editing ability.


[API Documentation](https://libyue.com/docs/latest/lua/api/datepicker.html#)
]]
---@class nu.DatePicker : nu.View
---@field ondatechange (fun(self: nu.DatePicker): nil) | nu.Signal Emitted when the selected date has been changed.
nu.DatePicker = {}

--[[## Create a new `DatePicker` with `options`.



]]
---@param options nu.DatePicker.Options
---@return nu.DatePicker
function nu.DatePicker.create(options) end

--[[## Set the selected date to `time`.



]]
---@param time number
---@return nil
function nu.DatePicker:setdate(time) end

--[[## Get the selected date.



]]
---@return number
function nu.DatePicker:getdate() end

--[[## Set the `minimum` and `maximum` date values.



]]
---@param minimum number
---@param maximum number
---@return nil
function nu.DatePicker:setrange(minimum, maximum) end

--[[## Return  the `minimum` and `maximum` date values.



]]
---@return nu.std.tuple
function nu.DatePicker:getrange() end

--[[## Return whether there is a stepper attached to the text field.



]]
---@return boolean
function nu.DatePicker:hasstepper() end

--[[# Table

### Table view.

#### Details

The `Table` does not store any data itself, to display data in `Table`, users
have to provide a `<!type>TableModel`.

How data are renderered depends on the type of column. It is also possible to
create a custom renderer for arbitrary data.

[API Documentation](https://libyue.com/docs/latest/lua/api/table.html#)
]]
---@class nu.Table : nu.View
---@field onselectionchange (fun(self: nu.Table): nil) | nu.Signal Emitted when the table's selection has changed.
---@field onrowactivate (fun(self: nu.Table, row: integer): nil) | nu.Signal Emitted when the user double-clicks a row.
---@field ontogglecheckbox (fun(self: nu.Table, column: integer, row: integer): nil) | nu.Signal Emitted when the user clicks a cell to toggle checkbox.
nu.Table = {}

--[[## Create a new `Table`.



]]
---@return nu.Table
function nu.Table.create() end

--[[## Set `model` as table's data source.



]]
---@param model nu.TableModel
---@return nil
function nu.Table:setmodel(model) end

--[[## Return table's model.



]]
---@return nu.TableModel
function nu.Table:getmodel() end

--[[## Add a new column with `title`, which shows readonly text.



]]
---@param title string
---@return nil
function nu.Table:addcolumn(title) end

--[[## Add a new column with `title` and `options`.



]]
---@param title string
---@param options nu.Table.ColumnOptions
---@return nil
function nu.Table:addcolumnwithoptions(title, options) end

--[[## Return the number of columns.



]]
---@return integer
function nu.Table:getcolumncount() end

--[[## Set whether the columns header is visible.

#### Details

On macOS adding column after hiding the header will result in missing
columns in the header even after making the header visible again.

It is recommended to never show the header again after hiding the header,
for consistent behaviors between platforms.


]]
---@param visible boolean
---@return nil
function nu.Table:setcolumnsvisible(visible) end

--[[## Return whether the columns header is visible.



]]
---@return boolean
function nu.Table:iscolumnsvisible() end

--[[## Set the `height` of each row.

#### Details

It is not recommended to change row height unless you are drawing all
cells yourself, as the default text cells may not show decently under
large or small height.

On Linux, due to platform implementations, this method has to be called
before adding columns. It does not have any effect when columns have
already been added.


]]
---@param height number
---@return nil
function nu.Table:setrowheight(height) end

--[[## Return the `height` of each row.



]]
---@return number
function nu.Table:getrowheight() end

--[[## Set whether the view has border.



]]
---@param has boolean
---@return nil
function nu.Table:sethasborder(has) end

--[[## Return whether the view has border.



]]
---@return boolean
function nu.Table:hasborder() end

--[[## Set whether it is allowed to select more than one row at a time.



]]
---@param enable boolean
---@return nil
function nu.Table:enablemultipleselection(enable) end

--[[## Return whether it is allowed to select more than one row at a time.



]]
---@return boolean
function nu.Table:ismultipleselectionenabled() end

--[[## Select a `row`.



]]
---@param row integer
---@return nil
function nu.Table:selectrow(row) end

--[[## Return the index of selected row.

#### Details

For table that allows multiple selections, this will return the index of
first selected row. When no row is selected, `-1` will be returned.


]]
---@return integer
function nu.Table:getselectedrow() end

--[[## Select multiple `rows`.



]]
---@param rows table
---@return nil
function nu.Table:selectrows(rows) end

--[[## Return selected rows' indexes.



]]
---@return table
function nu.Table:getselectedrows() end

--[[# Toolbar

### Window toolbar.

#### Details

This view is only implemented for macOS by wrapping
[`NSToolbar`](https://developer.apple.com/documentation/appkit/nstoolbar).
The API is still experimental and will be changed in future. Currently certain
items are not aligned correctly in toolbar.

The toolbar items are not added manually like the normal views, instead you
have to implement the `get_item` delegate which creates items on request, and
then call `SetDefaultItemIdentifiers` to specify the default items to show.



[API Documentation](https://libyue.com/docs/latest/lua/api/toolbar.html#)
]]
---@class nu.Toolbar
---@field getitem (fun(toolbar: nu.Toolbar, identifier: string): Toolbar::Item) Called lazily when the toolbar is going to get the item with `identifier`.  You should not cache the item to be returned.
nu.Toolbar = {}

--[[## Create a new `Toolbar` view with `identifier`.Within the application all toolbars with the same identifier aresynchronized to maintain the same state, including for example, thedisplay mode and item order. The identifier is used as the autosave namefor toolbars that save their configuration.



]]
---@param identifier string
---@return nu.Toolbar
function nu.Toolbar.create(identifier) end

--[[## Set the identifiers of default items that would show in toolbar.



]]
---@param identifiers table
---@return nil
function nu.Toolbar:setdefaultitemidentifiers(identifiers) end

--[[## Set the identifiers of the items that are allowed to show in toolbar.



]]
---@param identifiers table
---@return nil
function nu.Toolbar:setalloweditemidentifiers(identifiers) end

--[[## Set whether users are allowed to customize the toolbar.



]]
---@param allow boolean
---@return nil
function nu.Toolbar:setallowcustomization(allow) end

--[[## Set the display mode of the toolbar items.



]]
---@param mode nu.Toolbar.DisplayMode
---@return nil
function nu.Toolbar:setdisplaymode(mode) end

--[[## Set whether toolbar is visible.



]]
---@param visible boolean
---@return nil
function nu.Toolbar:setvisible(visible) end

--[[## Return whether toolbar is visible.



]]
---@return boolean
function nu.Toolbar:isvisible() end

--[[## Return the identifier of the toolbar.



]]
---@return string
function nu.Toolbar:getidentifier() end

---@alias nu.BlendMode
---| "normal"
---| "multiply"
---| "screen"
---| "overlay"
---| "darken"
---| "lighten"
---| "color-dodge"
---| "color-burn"
---| "soft-light"
---| "hard-light"
---| "difference"
---| "exclusion"
---| "hue"
---| "saturation"
---| "color"
---| "luminosity"
---| "clear"
---| "copy"
---| "source-in"
---| "source-out"
---| "source-atop"
---| "destination-over"
---| "destination-in"
---| "destination-atop"
---| "xor"
---@alias nu.Clipboard.Data.Type
---| "text"
---| "html"
---| "image"
---| "file-paths"
---| "none"
--[[# Locale

### Information about localization.


[API Documentation](https://libyue.com/docs/latest/lua/api/locale.html#)
]]
---@class nu.Locale
nu.Locale = {}

--[[## Return current locale identifier string.



]]
---@return string
function nu.Locale.getcurrentidentifier() end

--[[## Return an ordered list of user's preferred languages.

#### Details

Users choose a primary language when configuring a device, they may also
specify one or more secondary languages in order of preference for use
when localization is unavailable in a higher priority language.

Use this API to obtain the current user's ordered list of languages,
presented as an array of locale identifier strings.


]]
---@return table
function nu.Locale.getpreferredlanguages() end

--[[# Browser

### Native webview using system browser.

#### Details

Using `Browser` requires relatively new operating systems, for macOS the
minimum version required is 10.10, for Linux it is required to install the
`webkit2gtk` library with at least version 2.8.

On Windows the latest version of IE installed would be used by default.

On Linux due to poor support of hardware acceleration, the browser may fail to
show anything, in that case you may want to disable hardware acceleration.

## WebView2 support

On Windows there is support for using
[WebView2](https://docs.microsoft.com/en-us/microsoft-edge/webview2/) as
browser backend, to enable it, you need to:

1. Set the `<!name>webview2_support` option to `true`.
2. Ship the `WebView2Loader.dll` file together with your program.
3. Have users install Edge Beta/Dev/Canary or
[WebView2 Runtime](https://docs.microsoft.com/en-us/microsoft-edge/webview2/concepts/distribution)
on their machines.

There are also a few things to notice:
1. When WebView2 failed to initialize for any reason, the browser will
fallback to use IE as backend quietly.
2. If you don't use WebView2, it is safe to remove the `WebView2Loader.dll`
file.
3. WebView2 can not use stable channels of Edge, it will search channels in
the order of WebView2 Runtime, Beta, Dev, and Canary.
4. Some `Browser` APIs are not implemented with WebView2 backend, due to lack
of APIs in WebView2.

[API Documentation](https://libyue.com/docs/latest/lua/api/browser.html#)
]]
---@class nu.Browser : nu.View
---@field onclose (fun(self: nu.Browser): nil) | nu.Signal Emitted when the web page requests to close.
---@field onupdatecommand (fun(self: nu.Browser): nil) | nu.Signal Emitted when the back-forward list has changed.
---@field onchangeloading (fun(self: nu.Browser): nil) | nu.Signal Emitted when the browser starts or stops loading content.
---@field onupdatetitle (fun(self: nu.Browser, title: string): nil) | nu.Signal Emitted when document's title is changed.
---@field onstartnavigation (fun(self: nu.Browser, url: string): nil) | nu.Signal Emitted when the browser begins provisional navigation.
---@field oncommitnavigation (fun(self: nu.Browser, url: string): nil) | nu.Signal Emitted when the browser begins to receive web content.
---@field onfinishnavigation (fun(self: nu.Browser, url: string): nil) | nu.Signal Emitted when the navigation is complete.
---@field onfailnavigation (fun(self: nu.Browser, url: string, code: integer): nil) | nu.Signal Emitted when the navigation fails.
nu.Browser = {}

--[[## Create a new browser view.



]]
---@param options nu.Browser.Options
---@return nu.Browser
function nu.Browser.create(options) end

--[[## Register a custom protocol with `scheme` and `handler`.

#### Details

When the browser sends a request with `scheme`, the `handler` will be
called with `handler(url)`, and the `handler` must return an instance of
class that inherits from `<!type>ProtocolJob`.

The `handler` is guaranteed to be called in the main thread.

This API is not supported on Windows with WebView2 backend.


]]
---@param scheme string
---@param handler function
---@return boolean
function nu.Browser.registerprotocol(scheme, handler) end

--[[## Unregister the custom protocol with `scheme`.

#### Details

This API is not supported on Windows with WebView2 backend.

]]
---@param scheme string
---@return nil
function nu.Browser.unregisterprotocol(scheme) end

--[[## Load the URL.



]]
---@param url string
---@return nil
function nu.Browser:loadurl(url) end

--[[## Set the webpage contents and base URL.

#### Details

On Windows with WebView2 backend, `baseurl` is not respected.

]]
---@param html string
---@param baseurl string
---@return nil
function nu.Browser:loadhtml(html, baseurl) end

--[[## Return current URL.



]]
---@return string
function nu.Browser:geturl() end

--[[## Return the title of document.



]]
---@return string
function nu.Browser:gettitle() end

--[[## Change browser's user agent.

#### Details

On Windows, due to Internet Explorer's limitations, calling `SetUserAgent`
would change all web pages' user agents in current process.

This API is not supported on Windows with WebView2 backend.


]]
---@param useragent string
---@return nil
function nu.Browser:setuseragent(useragent) end

--[[## Return whether page's magnification can be changed with gestures.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return boolean
function nu.Browser:ismagnifiable() end

--[[## Set whether page's magnification can be changed with gestures.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param magnifiable boolean
---@return nil
function nu.Browser:setmagnifiable(magnifiable) end

--[[## Evaluate `code` in browser and get the evaluated result.

#### Details

The `callback` will be called with `callback(success, result)`, the
`result` argument is a generic value that created from the result of
`code`.

Note that due to limitations of system toolkits, the execution may fail if
the result of execution of `code` can not be fully converted to JSON.

On Windows with WebView2 backend, the `success` may be true even when
exception is threw in the executed code.

On Windows with IE backend, the `code` is executed synchronously and
the `callback` is called before this API returns.


]]
---@param code string
---@param callback function
---@return nil
function nu.Browser:executejavascript(code, callback) end

--[[## Receive cookies under `url`.

#### Details

This API will include HTTP only cookies.

This API is not implemented on Windows with IE backend.


]]
---@param url string
---@param callback function
---@return nil
function nu.Browser:getcookiesforurl(url, callback) end

--[[## Navigate to the back item in the back-forward list.



]]
---@return nil
function nu.Browser:goback() end

--[[## Return whether there is a back item in the back-forward list that can benavigated to.



]]
---@return boolean
function nu.Browser:cangoback() end

--[[## Navigate to the forward item in the back-forward list.



]]
---@return nil
function nu.Browser:goforward() end

--[[## Return whether there is a forward item in the back-forward list that canbe navigated to.



]]
---@return boolean
function nu.Browser:cangoforward() end

--[[## Reload current page.



]]
---@return nil
function nu.Browser:reload() end

--[[## Stop loading all resources on the current page.



]]
---@return nil
function nu.Browser:stop() end

--[[## Return whether current page is loading content.



]]
---@return boolean
function nu.Browser:isloading() end

--[[## Set the `name` of object which would have the native bindings.

#### Details

By default native bindings are added to the `window` object, by calling
this API, native bindings will be added to the `window[name]` object.


]]
---@param name string
---@return nil
function nu.Browser:setbindingname(name) end

--[[## Add a native binding to web page with `name`.

#### Details

The `func` will be called with automatically converted arguments.


]]
---@param name string
---@param func function
---@return nil
function nu.Browser:addbinding(name, func) end

--[[## Add a raw handler to web page with `name`.

#### Details

The `func` will be called with a list of arguments passed from JavaScript.


]]
---@param name string
---@param func function
---@return nil
function nu.Browser:addrawbinding(name, func) end

--[[## Remove the native binding with `name`.



]]
---@param name string
---@return nil
function nu.Browser:removebinding(name) end

--[[## Buffer following calls of `<!name>AddBinding` until`<!name>EndAddingBindings` is called.

#### Details

Adding a native binding is an expensive operation, if you are adding a
lot of bindings, it is recommended to wrap the `<!name>AddBinding` calls
between a pair of `<!name>BeginAddingBindings` and `<!name>EndAddingBindings`
which will buffer the bindings and reduce the cost to minimal.


]]
---@return nil
function nu.Browser:beginaddingbindings() end

--[[## Consolidate bindings added.



]]
---@return nil
function nu.Browser:endaddingbindings() end

--[[# Tab

### Multipage view with tabs.


[API Documentation](https://libyue.com/docs/latest/lua/api/tab.html#)
]]
---@class nu.Tab : nu.View
---@field onselectedpagechange (fun(self: nu.Tab): nil) | nu.Signal Emitted when user has changed the selected page.
nu.Tab = {}

--[[## Create a new `Tab` view.



]]
---@return nu.Tab
function nu.Tab.create() end

--[[## Add `view` as a new page with `title`.



]]
---@param title string
---@param view nu.View
---@return nil
function nu.Tab:addpage(title, view) end

--[[## Remove the page that shows `view`.



]]
---@param view nu.View
---@return nil
function nu.Tab:removepage(view) end

--[[## Return the number of pages.



]]
---@return integer
function nu.Tab:pagecount() end

--[[## Return the view of page at `index`.



]]
---@param index integer
---@return nu.View
function nu.Tab:pageat(index) end

--[[## Select the page at `index`.



]]
---@param index integer
---@return nil
function nu.Tab:selectpageat(index) end

--[[## Return the index of selected page.



]]
---@return integer
function nu.Tab:getselectedpageindex() end

--[[## Return the view of selected page.



]]
---@return nu.View
function nu.Tab:getselectedpage() end

--[[# Vector2dF

### Two dimensions vector.

#### Details


This is represented by a table with `x` and `y` properties, indicating a
distance in two dimensions between two points.

```lua
print(view:offsetfromwindow())
-- { x=100, y=100 }
```

[API Documentation](https://libyue.com/docs/latest/lua/api/vector2df.html#)
]]
---@class nu.Vector2dF
---@field x number X component.
---@field y number Y component.
nu.Vector2dF = {}

--[[# AbstractTableModel

### Implement a custom TableModel.

#### Details

To implement a custom `<!type>TableModel`, please implement all the methods
in the Delegates section. It is also required to call the `Notify` methods of
`<!type>TableModel` super class when data has been changed, so the
`<!type>Table` can correctly update.

For simple use cases, the `<!type>SimpleTableModel` can be used.

[API Documentation](https://libyue.com/docs/latest/lua/api/abstracttablemodel.html#)
]]
---@class nu.AbstractTableModel : nu.TableModel
---@field getrowcount (fun(self: nu.AbstractTableModel): integer) Return how many rows are in the model.
---@field getvalue (fun(self: nu.AbstractTableModel, column: integer, row: integer): any) Return the data at `column` and `row`.
---@field setvalue (fun(self: nu.AbstractTableModel, column: integer, row: integer, value: any): nil) Change the `value` at `column` and `row`.
nu.AbstractTableModel = {}

---@alias nu.Entry.Type
---| "normal"
---| "password"
--[[# FileDialog

### Base class for file dialogs.


[API Documentation](https://libyue.com/docs/latest/lua/api/filedialog.html#)
]]
---@class nu.FileDialog
nu.FileDialog = {}

--[[## Return the chosen item in dialog.



]]
---@return string
function nu.FileDialog:getresult() end

--[[## Show the dialog and wait for result, return `true` if user has chosenitem(s).



]]
---@return boolean
function nu.FileDialog:run() end

--[[## Show the dialog as a modal child of parent `window` and wait for result,return `true` if user has chosen item(s).



]]
---@param window nu.Window
---@return boolean
function nu.FileDialog:runforwindow(window) end

--[[## Set the title of the dialog.



]]
---@param title string
---@return nil
function nu.FileDialog:settitle(title) end

--[[## Set the text of accept button.



]]
---@param label string
---@return nil
function nu.FileDialog:setbuttonlabel(label) end

--[[## Set the filename to show in the dialog.



]]
---@param filename string
---@return nil
function nu.FileDialog:setfilename(filename) end

--[[## Set a `folder` that is always selected when the dialog is openedOn macOS file dialogs of sandboxed apps may silently ignore the folderselection, notwithstanding that the user may be able to subsequentlynavigate to the folder and the app successfully access files withinthe folder. The behavior depends on the app's entitlements and theparticular folder specified.



]]
---@param folder string
---@return nil
function nu.FileDialog:setfolder(folder) end

--[[## A bit array of `options`.



]]
---@param options integer
---@return nil
function nu.FileDialog:setoptions(options) end

--[[## Set the file types that the dialog can open or save.



]]
---@param filters table
---@return nil
function nu.FileDialog:setfilters(filters) end

--[[# Font

### Native font.


[API Documentation](https://libyue.com/docs/latest/lua/api/font.html#)
]]
---@class nu.Font
nu.Font = {}

--[[## Return the default font used for displaying text.



]]
---@return nu.Font
function nu.Font.default() end

--[[## Create a Font implementation with the specified `name`, DIP `size`,`weight` and `style`.



]]
---@param name string
---@param size number
---@param weight nu.Font.Weight
---@param style nu.Font.Style
---@return nu.Font
function nu.Font.create(name, size, weight, style) end

--[[## Create a Font by reading from |path|. If the font file contains multiplefamilies or weights, only the first encountered font will be used.



]]
---@param path string
---@param size number
---@return nu.Font
function nu.Font.createfrompath(path, size) end

--[[## Returns a new Font derived from the existing font.

#### Details

The `size_delta` is the size in DIP to add to the current font.

]]
---@param sizedelta number
---@param weight nu.Font.Weight
---@param style nu.Font.Style
---@return nu.Font
function nu.Font:derive(sizedelta, weight, style) end

--[[## Return font's family name.



]]
---@return string
function nu.Font:getname() end

--[[## Return font's DIP size.



]]
---@return number
function nu.Font:getsize() end

--[[## Return the font weight.



]]
---@return nu.Font.Weight
function nu.Font:getweight() end

--[[## Return the font style.



]]
---@return nu.Font.Style
function nu.Font:getstyle() end

---@alias nu.Cursor.Type
---| "default"
---| "hand"
---| "crosshair"
---| "progress"
---| "text"
---| "not-allowed"
---| "help"
---| "move"
---| "resize-ew"
---| "resize-ns"
---| "resize-nesw"
---| "resize-nwse"
--[[# Entry

### Single-line text input view.


[API Documentation](https://libyue.com/docs/latest/lua/api/entry.html#)
]]
---@class nu.Entry : nu.View
---@field ontextchange (fun(self: nu.Entry): nil) | nu.Signal Emitted when user has changed text.
---@field onactivate (fun(self: nu.Entry): nil) | nu.Signal Emitted when user has pressed <kbd>Enter</kbd> in the view.
nu.Entry = {}

--[[## Create a normal `Entry`.



]]
---@return nu.Entry
function nu.Entry.create() end

--[[## Create an `Entry` with `type`.



]]
---@param type nu.Entry.Type
---@return nu.Entry
function nu.Entry.createtype(type) end

--[[## Change the text in the view.



]]
---@param text string
---@return nil
function nu.Entry:settext(text) end

--[[## Return currently displayed text.



]]
---@return string
function nu.Entry:gettext() end

--[[# MenuBase

### Base class of menu bar and popup menu.

#### Details


Note that the `index` counts from `1`, following lua's convention.

[API Documentation](https://libyue.com/docs/latest/lua/api/menubase.html#)
]]
---@class nu.MenuBase
nu.MenuBase = {}

--[[## Append the `item` to the menu.



]]
---@param item nu.MenuItem
---@return nil
function nu.MenuBase:append(item) end

--[[## Insert the `item` at `index` to the menu.



]]
---@param item nu.MenuItem
---@param index integer
---@return nil
function nu.MenuBase:insert(item, index) end

--[[## Remove the `item` from the menu.



]]
---@param item nu.MenuItem
---@return nil
function nu.MenuBase:remove(item) end

--[[## Return the count of items in the menu.



]]
---@return integer
function nu.MenuBase:itemcount() end

--[[## Return the item at `index`.



]]
---@param index integer
---@return nu.MenuItem
function nu.MenuBase:itemat(index) end

--[[# Picker

### Choose a single item from a list of items.

#### Details

By default, the first item is automatically selected, and duplicate items
are merged into one.

[API Documentation](https://libyue.com/docs/latest/lua/api/picker.html#)
]]
---@class nu.Picker : nu.View
---@field onselectionchange (fun(self: nu.Picker): nil) | nu.Signal Emitted when user has changed the selected item.
nu.Picker = {}

--[[## Create a new `Picker` view.



]]
---@return nu.Picker
function nu.Picker.create() end

--[[## Add an item with `title` to the end.



]]
---@param title string
---@return nil
function nu.Picker:additem(title) end

--[[## Remove the item at `index`.



]]
---@param index integer
---@return nil
function nu.Picker:removeitemat(index) end

--[[## Remove all items.



]]
---@return nil
function nu.Picker:clear() end

--[[## Return all items.



]]
---@return table
function nu.Picker:getitems() end

--[[## Select the item at `index`.



]]
---@param index integer
---@return nil
function nu.Picker:selectitemat(index) end

--[[## Return the title of selected item.

#### Details

Empty string is returned if there is no selected item.

]]
---@return string
function nu.Picker:getselecteditem() end

--[[## Return the index of selected item.

#### Details

-1 is returned if there is no selected item.

]]
---@return integer
function nu.Picker:getselecteditemindex() end

--[[# Screen

### Receive information about system’s monitor or screen.

#### Details


This class can not be created by user, you can only receive its global
instance from the `screen` property of the module:

```lua
gui.screen:getprimarydisplay()
```

[API Documentation](https://libyue.com/docs/latest/lua/api/screen.html#)
]]
---@class nu.Screen
---@field onadddisplay (fun(display: nu.Display): nil) | nu.Signal Emitted when a new `display` is available.
---@field onremovedisplay (fun(display: nu.Display): nil) | nu.Signal Emitted when the `display` has been removed.
---@field onupdatedisplay (fun(display: nu.Display): nil) | nu.Signal Emitted when there are changes happened to `display`.
nu.Screen = {}

--[[## Return the primary display.



]]
---@return nu.Display
function nu.Screen:getprimarydisplay() end

--[[## Return the list of displays that are currently available.



]]
---@return table
function nu.Screen:getalldisplays() end

--[[## Return the display nearest the specified `window`.



]]
---@param window nu.Window
---@return nu.Display
function nu.Screen:getdisplaynearestwindow(window) end

--[[## Return the display nearest the specified DIP `point`.



]]
---@param point nu.PointF
---@return nu.Display
function nu.Screen:getdisplaynearestpoint(point) end

--[[## Return the current absolute position of the mouse pointer.



]]
---@return nu.PointF
function nu.Screen:getcursorscreenpoint() end

--[[# GlobalShortcut

### Register global keyboard shortcuts.

#### Details


This class can not be created by user, you can only receive its global
instance from the `globalshortcut` property of the module:

```lua
gui.globalshortcut:unregisterall()
```

[API Documentation](https://libyue.com/docs/latest/lua/api/globalshortcut.html#)
]]
---@class nu.GlobalShortcut
nu.GlobalShortcut = {}

--[[## Register a global keyboard shortcut that, `callback` will called when the`accelerator` is pressed.

#### Details

An unsigned ID will returned on success, which can be used to undo the
registration. -1 will be returned on error.

This API will fail silently when the accelerator is already taken by other
apps, there is no way to know if an accelerator has already been
registered by other apps.


]]
---@param accelerator nu.Accelerator
---@param callback function
---@return integer
function nu.GlobalShortcut:register(accelerator, callback) end

--[[## Unregister the shortcut with the `id` returned by `<!name>Register`.



]]
---@param id integer
---@return nil
function nu.GlobalShortcut:unregister(id) end

--[[## Unregister all shortcuts registered in this app.



]]
---@return nil
function nu.GlobalShortcut:unregisterall() end

--[[# RectF

### Rectangle type.

#### Details

This type defines a simple integer rectangle class. The containment semantics
are array-like; that is, the coordinate (x, y) is considered to be
contained by the rectangle, but the coordinate (x + width, y) is not.

This type is represented by a table with `x`, `y`, `width`, `height`
properties.

```lua
window:setbounds{x=11, y=24, width=100, height=100}
```

When a function accepts `RectF` as its last parameter, you can simply
unpack the properties:

```lua
window:setbounds(11, 24, 100, 100)
```

[API Documentation](https://libyue.com/docs/latest/lua/api/rectf.html#)
]]
---@class nu.RectF
---@field x number X coordinate.
---@field y number Y coordinate.
---@field width number Rectangle width.
---@field height number Rectangle height.
nu.RectF = {}

--[[# TextFormat

### Options for layouting text.


[API Documentation](https://libyue.com/docs/latest/lua/api/textformat.html#)
]]
---@class nu.TextFormat
---@field align nu.TextAlign Horizontal text align, default is to the start of layout.
---@field valign nu.TextAlign Vertical text align, default is to the start of layout.
---@field wrap boolean Whether to wrap lines, default is `true`.
---@field ellipsis boolean Whether to show ellipsis (...) at the end of the last visible line if the text doesn't fit into the bounds specified, default is `false`.
nu.TextFormat = {}

--[[# Accelerator

### Keyboard shortcut.

#### Details

Accelerators are represented by strings that contain multiple modifier and
key codes, combined by the `+` character.

Examples:
* `CmdOrCtrl+A`
* `Shift+Backspace`

## Platform-dependent modifiers

On Linux and Window, the `CommandOrControl` modifier is mapped to the
<kbd>Control</kbd> key. On macOS it is mapped to the `Command` key. This is
useful when defining some common keyboard shortcuts.

## Available modifiers

* `Control`, `Ctrl`
* `CommandOrControl`, `CmdOrCtrl`
* `Alt`, `Option`
* `Shift`
* `Meta`, `Command`, `Super`

## Available key codes

* `0` to `9`
* `A` to `Z`
* `F1` to `F24`
* Punctuations like `~`, `!`, `@`, `#`, `$`, etc.
* `Enter`, `Return`
* `Esc`, `Escape`
* `Up`, `Down`, `Left`, `Right`
* `Home`, `End`
* `PageDown`, `PageUp`
* `ArrowDown`, `ArrowLeft`, `ArrowRight`, `ArrowUp`
* `AudioVolumeDown`, `AudioVolumeMute`, `AudioVolumeUp`
* `BrowserBack`, `BrowserFavorites`, `BrowserForward`, `BrowserHome`,
  `BrowserRefresh`, `BrowserSearch`, `BrowserStop`
* `LaunchApplication1`, `LaunchApplication2`, `LaunchMail`,
  `LaunchMediaplayer`
* `MediaPlayPause`, `MediaStop`, `MediaTrackNext`, `MediaTrackPrevious`
* `HangulMode`, `HanjaMode`, `KanaMode`, `KanjiMode`
* `Add`
* `Backspace`
* `Cancel`
* `CapsLock`
* `Clear`
* `Contextmenu`
* `Decimal`
* `Delete`
* `Divide`
* `Execute`
* `Help`
* `Insert`
* `Multiply`
* `Numlock`
* `Pause`
* `Plus`
* `Print`
* `Scrolllock`
* `Select`
* `Snapshot`
* `Space`
* `Subtract`
* `Tab`

[API Documentation](https://libyue.com/docs/latest/lua/api/accelerator.html#)
]]
---@class nu.Accelerator
nu.Accelerator = {}

--[[# TextAttributes

### Options for drawing text.


[API Documentation](https://libyue.com/docs/latest/lua/api/textattributes.html#)
]]
---@class nu.TextAttributes : nu.TextFormat
---@field font nu.Font Font for drawing text, default is system UI font.
---@field color nu.Color Text color, default is system UI text color.
nu.TextAttributes = {}

--[[# ProtocolJob

### Response to custom protocol requests.

#### Details

This class can not be used to create instances, you must use its sub-classes
instead.

[API Documentation](https://libyue.com/docs/latest/lua/api/protocoljob.html#)
]]
---@class nu.ProtocolJob
nu.ProtocolJob = {}

--[[# Signal

### Connect and emit events.

#### Details


This class implements the signal/slot pattern, which is used as event type.

[API Documentation](https://libyue.com/docs/latest/lua/api/signal.html#)
]]
---@class nu.Signal
nu.Signal = {}

--[[## Connect `slot` to the signal, and return an ID that can be used todisconnect it.The signature of `slot` must match the event's type.



]]
---@param slot function
---@return integer
function nu.Signal:connect(slot) end

--[[## Disconnect the `id` from the signal.



]]
---@param id integer
---@return nil
function nu.Signal:disconnect(id) end

--[[## Disconnect all slots in the signal.



]]
---@return nil
function nu.Signal:disconnectall() end

--[[## Return `true` if there is no slot connected to the signal.



]]
---@return boolean
function nu.Signal:isempty() end

---@alias nu.Toolbar.DisplayMode
---| "default"
---| "icon-and-label"
---| "icon"
---| "label"
--[[# Painter

### Graphic context.

#### Details

The `Painter` class can not be created by user, its instance can only be recevied in drawing events or via the `<!type>Canvas` class.
[API Documentation](https://libyue.com/docs/latest/lua/api/painter.html#)
]]
---@class nu.Painter
nu.Painter = {}

--[[## Save the entire state of the painter.



]]
---@return nil
function nu.Painter:save() end

--[[## Restore the most recently saved state.



]]
---@return nil
function nu.Painter:restore() end

--[[## Set how sample values are composited.

#### Details

On Windows only `<!enum class>Normal` and `<!enum class>Copy` are supported.


]]
---@param mode nu.BlendMode
---@return nil
function nu.Painter:setblendmode(mode) end

--[[## Create a new path.



]]
---@return nil
function nu.Painter:beginpath() end

--[[## Close current path and move current point to the start of current path.A straight line will be drew from current point to the start.



]]
---@return nil
function nu.Painter:closepath() end

--[[## Move current point to `point`.



]]
---@param point nu.PointF
---@return nil
function nu.Painter:moveto(point) end

--[[## Connect the last point in current path to `point` with a straight line.



]]
---@param point nu.PointF
---@return nil
function nu.Painter:lineto(point) end

--[[## Add a cubic Bézier curve to current path.The first two points are control points and the third one is the endpoint. The starting point is the last point in the current path.



]]
---@param cp1 nu.PointF
---@param cp2 nu.PointF
---@param ep nu.PointF
---@return nil
function nu.Painter:beziercurveto(cp1, cp2, ep) end

--[[## Add an arc to the path which is centered at `point` with `radius`starting at `sa` angle and ending at `ea` angle going in clockwisedirection.



]]
---@param point nu.PointF
---@param radius number
---@param sa number
---@param ea number
---@return nil
function nu.Painter:arc(point, radius, sa, ea) end

--[[## Add rectangle to current path.



]]
---@param rect nu.RectF
---@return nil
function nu.Painter:rect(rect) end

--[[## Add current path to clip area by intersection.



]]
---@return nil
function nu.Painter:clip() end

--[[## Add `rect` to clip area by intersection.



]]
---@param rect nu.RectF
---@return nil
function nu.Painter:cliprect(rect) end

--[[## Add translate transformation which moves the origin by `offset`.



]]
---@param offset nu.Vector2dF
---@return nil
function nu.Painter:translate(offset) end

--[[## Add rotation transformation.



]]
---@param angle number
---@return nil
function nu.Painter:rotate(angle) end

--[[## Add scaling transformation to the painter.



]]
---@param scale nu.Vector2dF
---@return nil
function nu.Painter:scale(scale) end

--[[## Set stroke color and fill color to `color`.



]]
---@param color nu.Color
---@return nil
function nu.Painter:setcolor(color) end

--[[## Set the color used for shapes' outlines.



]]
---@param color nu.Color
---@return nil
function nu.Painter:setstrokecolor(color) end

--[[## Set the color used when filling shapes.



]]
---@param color nu.Color
---@return nil
function nu.Painter:setfillcolor(color) end

--[[## Set the width of lines.



]]
---@param width number
---@return nil
function nu.Painter:setlinewidth(width) end

--[[## Draw current path by stroking its outline.



]]
---@return nil
function nu.Painter:stroke() end

--[[## Draw a solid shape by filling current path's content area.



]]
---@return nil
function nu.Painter:fill() end

--[[## Fill the whole area with transparent color.



]]
---@return nil
function nu.Painter:clear() end

--[[## Draw a rectangular outline.



]]
---@param rect nu.RectF
---@return nil
function nu.Painter:strokerect(rect) end

--[[## Draw a filled rectangle.



]]
---@param rect nu.RectF
---@return nil
function nu.Painter:fillrect(rect) end

--[[## Draw scaled `image` to fit `rect`.



]]
---@param image nu.Image
---@param rect nu.RectF
---@return nil
function nu.Painter:drawimage(image, rect) end

--[[## Draw the specified portion of `image` at `src` to fit `rect`.



]]
---@param image nu.Image
---@param src nu.RectF
---@param dest nu.RectF
---@return nil
function nu.Painter:drawimagefromrect(image, src, dest) end

--[[## Draw scaled `canvas` to fit `rect`.



]]
---@param canvas nu.Canvas
---@param rect nu.RectF
---@return nil
function nu.Painter:drawcanvas(canvas, rect) end

--[[## Draw the specified portion of `canvas` at `src` to fit `rect`.



]]
---@param canvas nu.Canvas
---@param src nu.RectF
---@param dest nu.RectF
---@return nil
function nu.Painter:drawcanvasfromrect(canvas, src, dest) end

--[[## Draw `text` bounded by `rect`.



]]
---@param text nu.AttributedText
---@param rect nu.RectF
---@return nil
function nu.Painter:drawattributedtext(text, rect) end

--[[## Draw `text` with `attributes` bounded by `rect`.



]]
---@param text string
---@param rect nu.RectF
---@param attributes nu.TextAttributes
---@return nil
function nu.Painter:drawtext(text, rect, attributes) end

--[[# Color

### 32-bit Color with alpha channel.

#### Details


`Color` is represented by a 32-bit ARGB integer.

For APIs that accept `Color`, you can also pass a hex string representing
the color, like `"#A123"`, `"#123"`, `"#AA112233"`, `"#112233"`.

```lua
label:setcolor('#F000')
```

[API Documentation](https://libyue.com/docs/latest/lua/api/color.html#)
]]
---@class nu.Color : string
nu.Color = {}

--[[## Return the color with theme `name`.



]]
---@param name nu.Color.Name
---@return nu.Color
function nu.Color.get(name) end

--[[## Create an opaque RGB color.



]]
---@param r integer
---@param g integer
---@param b integer
---@return nu.Color
function nu.Color.rgb(r, g, b) end

--[[## Create an ARGB color.



]]
---@param a integer
---@param r integer
---@param g integer
---@param b integer
---@return nu.Color
function nu.Color.argb(a, r, g, b) end

---@alias nu.Table.ColumnType
---| "text" Renders readonly String value.
---| "edit" Like `<!enum class>Text` but allows user to edit the text.
---| "checkbox" Renders a checkbox, the data type must be Boolean.
---| "custom" Supports arbitrary type of data but a drawing function has to be provided. Note that native objects like `Image` can not be passed to `Table` as data.
--[[# Canvas

### Offscreen drawing.


[API Documentation](https://libyue.com/docs/latest/lua/api/canvas.html#)
]]
---@class nu.Canvas
nu.Canvas = {}

--[[## Create a new canvas with specified size and scale factor.



]]
---@param size nu.SizeF
---@param scalefactor number
---@return nu.Canvas
function nu.Canvas.create(size, scalefactor) end

--[[## Create a new canvas with `size` using default scale factor.This is strongly discouraged for using, since it does not work well withmulti-monitor setup. Only use it when you do not care about per-monitorDPI.



]]
---@param size nu.SizeF
---@return nu.Canvas
function nu.Canvas.createformainscreen(size) end

--[[## Return the scale factor of the canvas.



]]
---@return number
function nu.Canvas:getscalefactor() end

--[[## Return the Painter that can be used to draw on the canvas.



]]
---@return nu.Painter
function nu.Canvas:getpainter() end

--[[## Return the DIP size of canvas.



]]
---@return nu.SizeF
function nu.Canvas:getsize() end

--[[# Clipboard.Data

### Clipboard data.


[API Documentation](https://libyue.com/docs/latest/lua/api/clipboard.data.html#)
]]
---@class nu.Clipboard.Data
---@field type nu.Clipboard.Data.Type The type of data.
---@field value any The value of data.
nu.Clipboard.Data = {}
---@alias nu.App.ActivationPolicy
---| "regular" The application is an ordinary app that appears in the Dock and may have a user interface.
---| "accessory" The application does not appear in the Dock and does not have a menu bar, but it may be activated programmatically or by clicking on one of its windows.
---| "prohibited" The application does not appear in the Dock and may not create windows or be activated.
---@alias nu.Lifetime.Reply
---| "success"
---| "cancel"
---| "failure"
---@alias nu.Font.Weight
---| "thin"
---| "extra-light"
---| "light"
---| "normal"
---| "medium"
---| "semi-bold"
---| "bold"
---| "extra-bold"
---| "black"
--[[# FileDialog.Filter

### FileDialog filters.


[API Documentation](https://libyue.com/docs/latest/lua/api/filedialog.filter.html#)
]]
---@class nu.FileDialog.Filter
---@field description string Filter's description.
---@field extensions table An array of filename extensions for the filter.
nu.FileDialog.Filter = {}
--[[# SimpleTableModel

### A simple implementation of TableModel.

#### Details

There is no need to call `Notify` methods when using `SimpleTableModel`.

Note that all data are stored as primary types, it is not possible to store
a native object (for example `Image`s) in table model.

[API Documentation](https://libyue.com/docs/latest/lua/api/simpletablemodel.html#)
]]
---@class nu.SimpleTableModel : nu.TableModel
nu.SimpleTableModel = {}

--[[## Create a `SimpleTableModel` with fixed `columns` number.



]]
---@param columns integer
---@return nu.SimpleTableModel
function nu.SimpleTableModel.create(columns) end

--[[## Add a row.

#### Details

The length of `row` should not be smaller than columns number.

]]
---@param row table
---@return nil
function nu.SimpleTableModel:addrow(row) end

--[[## Remove the row at `index`.



]]
---@param index integer
---@return nil
function nu.SimpleTableModel:removerowat(index) end

--[[# App.ShortcutOptions

### Options for creating start menu shortcut.


[API Documentation](https://libyue.com/docs/latest/lua/api/app.shortcutoptions.html#)
]]
---@class nu.App.ShortcutOptions
---@field arguments string The arguments passed to the executable, default is empty string.
---@field description string The description of the shortcut, default is the executable's description.
---@field workingdir string The working directory that the executable will run under.
nu.App.ShortcutOptions = {}
---@alias nu.Scroll.Policy
---| "always"
---| "never"
---| "automatic"
--[[# Slider

### A slider bar for selecting numerical value.

#### Details

The default range is between `0` and `100`.
[API Documentation](https://libyue.com/docs/latest/lua/api/slider.html#)
]]
---@class nu.Slider : nu.View
---@field onvaluechange (fun(self: nu.Slider): nil) | nu.Signal Emitted when user is changing the slider.
---@field onslidingcomplete (fun(self: nu.Slider): nil) | nu.Signal Emitted when user releases the slider.
nu.Slider = {}

--[[## Create a new `Slider` view.



]]
---@return nu.Slider
function nu.Slider.create() end

--[[## Set the value.



]]
---@param value number
---@return nil
function nu.Slider:setvalue(value) end

--[[## Return the value.



]]
---@return number
function nu.Slider:getvalue() end

--[[## Set the step value of the slider.



]]
---@param step number
---@return nil
function nu.Slider:setstep(step) end

--[[## Return the step value of the slider.



]]
---@return number
function nu.Slider:getstep() end

--[[## Set the range of the slider.



]]
---@param min number
---@param max number
---@return nil
function nu.Slider:setrange(min, max) end

--[[## Return the range of the slider.



]]
---@return nu.std.tuple
function nu.Slider:getrange() end

--[[# Window.Options

### Options for creating window.


[API Documentation](https://libyue.com/docs/latest/lua/api/window.options.html#)
]]
---@class nu.Window.Options
---@field frame boolean Whether window has native frame, default is `true`.
---@field transparent boolean Whether window is transparent, default is `false`.  Only frameless window can be transparent, the behavior of making a normal window transparent is undefined.
---@field showtrafficlights boolean Whether to show window buttons for frameless window, default is `false`.  This property is ignored for normal windows.
nu.Window.Options = {}
--[[# Browser.Options

### Options for creating browser.


[API Documentation](https://libyue.com/docs/latest/lua/api/browser.options.html#)
]]
---@class nu.Browser.Options
---@field devtools boolean Whether the browser can show devtools, default is `false`.
---@field contextmenu boolean Whether to use builtin context menu, default is `false`.
---@field allowfileaccessfromfiles boolean Whether file access is allowed from file URLs, default is `false`.
---@field hardwareacceleration boolean Whether to enable hardware acceleration, default is `true`.
---@field webview2support boolean Whether to use WebView2 as backend, default is `false`.
nu.Browser.Options = {}
---@alias nu.Clipboard.Type
---| "copy-paste"
---| "drag" Only available on macOS.
---| "find" Only available on macOS.
---| "font" Only available on macOS.
---| "selection" Only available on Linux.
---@alias nu.Styles.Align "auto" | "flex-start" | "center" | "flex-end" | "stretch" | "baseline" | "space-between" | "space-around"
---@alias nu.Styles.Dimension "width" | "height"
---@alias nu.Styles.Direction "inherit" | "ltr" | "rtl"
---@alias nu.Styles.Display "flex" | "none"
---@alias nu.Styles.Edge "left" | "top" | "right" | "bottom" | "start" | "end" | "horizontal" | "vertical" | "all"
---@alias nu.Styles.Errata "none" | "stretch-flex-basis" | "all" | "classic"
---@alias nu.Styles.ExperimentalFeature "web-flex-basis" | "absolute-percentage-against-padding-edge" | "fix-jni-local-ref-overflows"
---@alias nu.Styles.FlexDirection "column" | "column-reverse" | "row" | "row-reverse"
---@alias nu.Styles.Gutter "column" | "row" | "all"
---@alias nu.Styles.Justify "flex-start" | "center" | "flex-end" | "space-between" | "space-around" | "space-evenly"
---@alias nu.Styles.LogLevel "error" | "warn" | "info" | "debug" | "verbose" | "fatal"
---@alias nu.Styles.MeasureMode "undefined" | "exactly" | "at-most"
---@alias nu.Styles.NodeType "default" | "text"
---@alias nu.Styles.Overflow "visible" | "hidden" | "scroll"
---@alias nu.Styles.PositionType "static" | "relative" | "absolute"
---@alias nu.Styles.PrintOptions "layout" | "style" | "children"
---@alias nu.Styles.Unit "undefined" | "point" | "percent" | "auto"
---@alias nu.Styles.Wrap "no-wrap" | "wrap" | "wrap-reverse"

--[[
## Styles for views
[Documentation](https://yogalayout.com/docs)
]]
---@class nu.Styles
---@field ["align-content"] nu.Styles.Align
---@field ["align-items"] nu.Styles.Align
---@field ["align-self"] nu.Styles.Align
---
---@field ["aspect-ratio"] number
---
---@field ["border-left"] number
---@field ["border-top"] number
---@field ["border-right"] number
---@field ["border-bottom"] number
---@field ["border-start"] number
---@field ["border-end"] number
---@field ["border-horizontal"] number
---@field ["border-vertical"] number
---@field ["border-all"] number
---
---@field ["display"] nu.Styles.Display
---
---@field ["flex"] number
---@field ["flex-basis"] "auto" | number
---@field ["flex-basis-percent"] number
---@field ["flex-basis-auto"] boolean
---@field ["flex-direction"] nu.Styles.FlexDirection
---@field ["flex-grow"] number
---@field ["flex-shrink"] number
---@field ["flex-wrap"] nu.Styles.Wrap
---
---@field ["height"] "auto" | number
---@field ["height-percent"] number
---@field ["is-reference-baseline"] boolean
---
---@field ["justify-content"] nu.Styles.Justify
---
---@field ["gap-column"] number
---@field ["gap-row"] number
---@field ["gap-all"] number
---
---@field ["margin-left"] "auto" | number
---@field ["margin-top"] "auto" | number
---@field ["margin-right"] "auto" | number
---@field ["margin-bottom"] "auto" | number
---@field ["margin-start"] "auto" | number
---@field ["margin-end"] "auto" | number
---@field ["margin-horizontal"] "auto" | number
---@field ["margin-vertical"] "auto" | number
---@field ["margin-all"] "auto" | number
---@field ["margin-left-percent"] number
---@field ["margin-top-percent"] number
---@field ["margin-right-percent"] number
---@field ["margin-bottom-percent"] number
---@field ["margin-start-percent"] number
---@field ["margin-end-percent"] number
---@field ["margin-horizontal-percent"] number
---@field ["margin-vertical-percent"] number
---@field ["margin-all-percent"] number
---
---@field ["max-height"] "auto" | number
---@field ["max-height-percent"] number
---@field ["max-width"] "auto" | number
---@field ["max-width-percent"] number
---@field ["min-height"] "auto" | number
---@field ["min-height-percent"] number
---@field ["min-width"] "auto" | number
---@field ["min-width-percent"] number
---
---@field ["overflow"] nu.Styles.Overflow
---
---@field ["padding-left"] number
---@field ["padding-top"] number
---@field ["padding-right"] number
---@field ["padding-bottom"] number
---@field ["padding-start"] number
---@field ["padding-end"] number
---@field ["padding-horizontal"] number
---@field ["padding-vertical"] number
---@field ["padding-all"] number
---@field ["padding-left-percent"] number
---@field ["padding-top-percent"] number
---@field ["padding-right-percent"] number
---@field ["padding-bottom-percent"] number
---@field ["padding-start-percent"] number
---@field ["padding-end-percent"] number
---@field ["padding-horizontal-percent"] number
---@field ["padding-vertical-percent"] number
---@field ["padding-all-percent"] number
---
---@field ["position-left"] number
---@field ["position-top"] number
---@field ["position-right"] number
---@field ["position-bottom"] number
---@field ["position-start"] number
---@field ["position-end"] number
---@field ["position-horizontal"] number
---@field ["position-vertical"] number
---@field ["position-all"] number
---@field ["position-left-percent"] number
---@field ["position-top-percent"] number
---@field ["position-right-percent"] number
---@field ["position-bottom-percent"] number
---@field ["position-start-percent"] number
---@field ["position-end-percent"] number
---@field ["position-horizontal-percent"] number
---@field ["position-vertical-percent"] number
---@field ["position-all-percent"] number
---
---@field ["position-type"] nu.Styles.PositionType
---
---@field ["width"] "auto" | number
---@field ["width-percent"] number
---
---@field ["wrap"] nu.Styles.Wrap
---
return nu
