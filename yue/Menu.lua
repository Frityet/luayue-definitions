---@meta

---Popup menu.
---@class Menu : MenuBase
local Menu = {}
---Create a popup menu.
---@param items table
---@return Menu
function Menu.create(items) end

---Show the popup menu at current mouse position, this method will block until the menu is dismissed. 
---@return nil
function Menu.popup() end

return Menu
