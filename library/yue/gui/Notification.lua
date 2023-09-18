---@meta

--[[# Notification

### Send native notifications.

### Details

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
local Notification = {}
--[[## Create a new Notification instance.



]]
---@return nu.Notification 
function Notification.create() end

--[[## Display the notification.

### Details

If the notification has already been displayed, calling this method again
will update the contents of the notification. If the notification has been
closed, calling this method will show the notification again.

On Windows due to platform limitation, only the title and body of the
notification can be updated after it has been displayed.


]]
---@return nil 
function Notification:show() end

--[[## Close the notification.



]]
---@return nil 
function Notification:close() end

--[[## Set the title of the notification.



]]
---@param title string 
---@return nil 
function Notification:settitle(title) end

--[[## Set the body text of the notification.



]]
---@param body string 
---@return nil 
function Notification:setbody(body) end

--[[## Set the user info to be attached to the notification.

### Details

When handling notification events with `<!type>NotificationCenter`, only
the user info will be passed to the event handler.


]]
---@param info string 
---@return nil 
function Notification:setinfo(info) end

--[[## Return the attached user info.



]]
---@return string 
function Notification:getinfo() end

--[[## Set the buttons to be displayed in the notification.

### Details

The `<!name>on_notification_action` event of `<!type>NotificationCenter`
will be emitted when user clicks one of the buttons.


]]
---@param actions table 
---@return nil 
function Notification:setactions(actions) end

--[[## Set whether to play sound when the notification is displayed.



]]
---@param silent boolean 
---@return nil 
function Notification:setsilent(silent) end

--[[## Set the image shown in the content of the notification.

### Details

Different platforms may choose to put the image in different places, there
is no guarentee on where the image is placed.


]]
---@param image nu.Image 
---@return nil 
function Notification:setimage(image) end

--[[## Set the file path of the image shown in the content of the notification.


### Details

This method is usually faster than reading a file from disk and passing
its content to `<!name>SetImage`, so it is recommended to use this
method over `<!name>SetImage` if the image is stored on disk.

Different platforms may choose to put the image in different places, there
is no guarentee on where the image is placed.


]]
---@param path string 
---@return nil 
function Notification:setimagepath(path) end

--[[## Set the `placement` attribute of the image.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
### Details

The most common used `placement`s are `"appLogoOverride"` and `"hero"`.


]]
---@param placement string 
---@return nil 
function Notification:setimageplacement(placement) end

--[[## Set whether to display an input field and a reply button in the
notification.


| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|
### Details

The `<!name>on_notification_reply` event of `<!type>NotificationCenter`
will be emitted when user sends a reply in the notification.


]]
---@param has boolean 
---@return nil 
function Notification:sethasreplybutton(has) end

--[[## The the placeholder of the input field.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|


]]
---@param placeholder string 
---@return nil 
function Notification:setresponseplaceholder(placeholder) end

--[[## Set an unique `identifier` that can identifies a notification.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|
### Details

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
function Notification:setidentifier(identifier) end

--[[## Return the unique identifier of the notification.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|


]]
---@return string 
function Notification:getidentifier() end

--[[## Set custom XML of the toast notification.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
### Details

On Windows the notification can have rich contents and the Notification
APIs do not cover all the possible features. In case you want to show
some rich contents, you can use this API to set raw XML of the
notification.

You can find documentation on the XML schema and tools to generate XML
at [here](https://docs.microsoft.com/en-us/windows/apps/design/shell/tiles-and-notifications/adaptive-interactive-toasts?tabs=xml).


]]
---@param xml string 
---@return nil 
function Notification:setxml(xml) end

--[[## Return the XML representation of the toast notification.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|


]]
---@return string 
function Notification:getxml() end

return Notification
