---@meta

--[[The `Notification` API is responsible for sending notifications, for handling
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
]]
---Send native notifications.
---@class Notification 
local Notification = {}
--[[Create a new Notification instance.]]
---@return Notification 
function Notification.create() end

--[[Display the notification.]]
---@return nil 
function Notification:show() end

--[[Close the notification.]]
---@return nil 
function Notification:close() end

--[[Set the title of the notification.]]
---@param title string 
---@return nil 
function Notification:settitle(title) end

--[[Set the body text of the notification.]]
---@param body string 
---@return nil 
function Notification:setbody(body) end

--[[Set the user info to be attached to the notification.]]
---@param info string 
---@return nil 
function Notification:setinfo(info) end

--[[Return the attached user info.]]
---@return string 
function Notification:getinfo() end

--[[Set the buttons to be displayed in the notification.]]
---@param actions table 
---@return nil 
function Notification:setactions(actions) end

--[[Set whether to play sound when the notification is displayed.]]
---@param silent boolean 
---@return nil 
function Notification:setsilent(silent) end

--[[Set the image shown in the content of the notification.]]
---@param image Image 
---@return nil 
function Notification:setimage(image) end

--[[Set the file path of the image shown in the content of the notification.
]]
---@param path string 
---@return nil 
function Notification:setimagepath(path) end

--[[Set the `placement` attribute of the image.]]
---@param placement string 
---@return nil 
function Notification:setimageplacement(placement) end

--[[Set whether to display an input field and a reply button in the
notification.
]]
---@param has boolean 
---@return nil 
function Notification:sethasreplybutton(has) end

--[[The the placeholder of the input field.]]
---@param placeholder string 
---@return nil 
function Notification:setresponseplaceholder(placeholder) end

--[[Set an unique `identifier` that can identifies a notification.]]
---@param identifier string 
---@return nil 
function Notification:setidentifier(identifier) end

--[[Return the unique identifier of the notification.]]
---@return string 
function Notification:getidentifier() end

--[[Set custom XML of the toast notification.]]
---@param xml string 
---@return nil 
function Notification:setxml(xml) end

--[[Return the XML representation of the toast notification.]]
---@return string 
function Notification:getxml() end

return Notification
