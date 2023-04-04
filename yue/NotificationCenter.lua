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

return NotificationCenter
