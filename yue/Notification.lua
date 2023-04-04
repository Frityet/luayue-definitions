---@meta

---Send native notifications.
---@class Notification
local Notification = {}
---Create a new Notification instance.
---@return Notification
function Notification.create() end

---Display the notification.
---@return nil
function Notification:show() end

---Close the notification.
---@return nil
function Notification:close() end

---Set the title of the notification.
---@param title string
---@return nil
function Notification:settitle(title) end

---Set the body text of the notification.
---@param body string
---@return nil
function Notification:setbody(body) end

---Set the user info to be attached to the notification.
---@param info string
---@return nil
function Notification:setinfo(info) end

---Return the attached user info.
---@return string
function Notification:getinfo() end

---Set the buttons to be displayed in the notification.
---@param actions table
---@return nil
function Notification:setactions(actions) end

---Set whether to play sound when the notification is displayed.
---@param silent boolean
---@return nil
function Notification:setsilent(silent) end

---Set the image shown in the content of the notification.
---@param image Image
---@return nil
function Notification:setimage(image) end

---Set the file path of the image shown in the content of the notification. 
---@param path string
---@return nil
function Notification:setimagepath(path) end

---Set the `placement` attribute of the image.
---@param placement string
---@return nil
function Notification:setimageplacement(placement) end

---Set whether to display an input field and a reply button in the notification. 
---@param has boolean
---@return nil
function Notification:sethasreplybutton(has) end

---The the placeholder of the input field.
---@param placeholder string
---@return nil
function Notification:setresponseplaceholder(placeholder) end

---Set an unique `identifier` that can identifies a notification.
---@param identifier string
---@return nil
function Notification:setidentifier(identifier) end

---Return the unique identifier of the notification.
---@return string
function Notification:getidentifier() end

---Set custom XML of the toast notification.
---@param xml string
---@return nil
function Notification:setxml(xml) end

---Return the XML representation of the toast notification.
---@return string
function Notification:getxml() end

return Notification
