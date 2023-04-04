---@meta

---Handle events of notifications.
---@class NotificationCenter
---@field onnotificationshow fun(info: string): nil Emitted when a notification has been displayed, the custom `info` of the notification is passed. 
---@field onnotificationclose fun(info: string): nil Emitted when a notification has been closed without activation, the custom `info` of the notification is passed. 
---@field onnotificationclick fun(info: string): nil Emitted when user clicks on the body of a notification, the custom `info` of the notification is passed. 
---@field onnotificationaction fun(actioninfo: string): nil Emitted when user clicks on an action button of a notification, the custom `<!name>action_info` string of the action button is passed. 
---@field onnotificationreply fun(info: string, reply: string): nil Emitted when user sends a text using inline reply in a notification, the custom `info` of the notification, and the `reply` string will be passed. 
---@field ontoastactivate fun(appusermodelid: string, invokedargs: string, data: table): boolean Emitted when the notification activator COM server receives the Activate message. 
local NotificationCenter = {}
---Remove all notifications sent by this app.
---@return nil
function NotificationCenter:clear() end

---Set COM server related options, `false` will be returned if the passed `ToastActivatorCLSID` is invalid. 
---@param options NotificationCenter::COMServerOptions
---@return boolean
function NotificationCenter:setcomserveroptions(options) end

---Register the COM server.
---@return boolean
function NotificationCenter:registercomserver() end

---Remove the app's COM server from registry.
---@return nil
function NotificationCenter:removecomserverfromregistry() end

---Return current `ToastActivatorCLSID`.
---@return string
function NotificationCenter:gettoastactivatorclsid() end

return NotificationCenter
