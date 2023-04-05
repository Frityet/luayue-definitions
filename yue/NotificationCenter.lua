---@meta

--[[# Handle events of notifications.

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
]]
---@class NotificationCenter
---@field onnotificationshow fun(info: string): nil Emitted when a notification has been displayed, the custom `info` of the notification is passed. 
---@field onnotificationclose fun(info: string): nil Emitted when a notification has been closed without activation, the custom `info` of the notification is passed. 
---@field onnotificationclick fun(info: string): nil Emitted when user clicks on the body of a notification, the custom `info` of the notification is passed. 
---@field onnotificationaction fun(actioninfo: string): nil Emitted when user clicks on an action button of a notification, the custom `<!name>action_info` string of the action button is passed. 
---@field onnotificationreply fun(info: string, reply: string): nil Emitted when user sends a text using inline reply in a notification, the custom `info` of the notification, and the `reply` string will be passed. 
---@field ontoastactivate fun(appusermodelid: string, invokedargs: string, data: table): boolean Emitted when the notification activator COM server receives the Activate message. 
local NotificationCenter = {}
--[[Remove all notifications sent by this app.]]
---@return nil 
function NotificationCenter:clear() end

--[[Set COM server related options, `false` will be returned if the passed
`ToastActivatorCLSID` is invalid.
]]
---@param options NotificationCenter.COMServerOptions 
---@return boolean 
function NotificationCenter:setcomserveroptions(options) end

--[[Register the COM server.]]
---@return boolean 
function NotificationCenter:registercomserver() end

--[[Remove the app's COM server from registry.]]
---@return nil 
function NotificationCenter:removecomserverfromregistry() end

--[[Return current `ToastActivatorCLSID`.]]
---@return string 
function NotificationCenter:gettoastactivatorclsid() end

return NotificationCenter
