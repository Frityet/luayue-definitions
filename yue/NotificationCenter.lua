---@meta

---Handle events of notifications.
---@class NotificationCenter
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

---Emitted when a notification has been displayed, the custom `info` of the notification is passed. 
---@param info string
---@return nil
function NotificationCenter:onnotificationshow(info) end

---Emitted when a notification has been closed without activation, the custom `info` of the notification is passed. 
---@param info string
---@return nil
function NotificationCenter:onnotificationclose(info) end

---Emitted when user clicks on the body of a notification, the custom `info` of the notification is passed. 
---@param info string
---@return nil
function NotificationCenter:onnotificationclick(info) end

---Emitted when user clicks on an action button of a notification, the custom `<!name>action_info` string of the action button is passed. 
---@param actioninfo string
---@return nil
function NotificationCenter:onnotificationaction(actioninfo) end

---Emitted when user sends a text using inline reply in a notification, the custom `info` of the notification, and the `reply` string will be passed. 
---@param info string, reply string
---@return nil
function NotificationCenter:onnotificationreply(info, reply) end

---Emitted when the notification activator COM server receives the Activate message. 
---@param appusermodelid string, invokedargs string, data table
---@return boolean
function NotificationCenter:ontoastactivate(appusermodelid, invokedargs, data) end

return NotificationCenter
