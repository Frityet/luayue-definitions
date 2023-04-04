---@meta

---Application class.
---@class App
local App = {}
---Set the name of current app.
---@param name string
---@return nil
function App:setname(name) end

---Return current app's name.
---@return string
function App:getname() end

---Set the application ID.
---@param id string
---@return nil
function App:setid(id) end

---Return the application ID.
---@return string
function App:getid() end

---Set the application menu bar.
---@param menu MenuBar
---@return nil
function App:setapplicationmenu(menu) end

---Return the application menu bar.
---@return MenuBar
function App:getapplicationmenu() end

---Set the `label` to be displayed in dock’s badging area.
---@param label string
---@return nil
function App:setdockbadgelabel(label) end

---Get the label displayed in dock’s badging area.
---@return string
function App:getdockbadgelabel() end

---Return whether app is running as UWP/Desktop Bridge.
---@return boolean
function App:isrunningasuwp() end

---Create a start menu shortcut for current user linking to current process.
---@param options App::ShortcutOptions
---@return boolean
function App:createstartmenushortcut(options) end

---Return file path to the shortcut created by the `<!method>App::CreateStartMenuShortcut(options)` API.
---@return string
function App:getstartmenushortcutpath() end

---Make current app the active app.
---@param force boolean
---@return nil
function App:activate(force) end

---Deactivate current app.
---@return nil
function App:deactivate() end

---Return whether current app is the active app.
---@return boolean
function App:isactive() end

---Modify the app's activation policy.
---@param policy App::ActivationPolicy
---@return nil
function App:setactivationpolicy(policy) end

---Return app's activation policy.
---@return App::ActivationPolicy
function App:getactivationpolicy() end

return App
