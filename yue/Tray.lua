---@meta

---Tray item displayed in system notification area.
---@class Tray
local Tray = {}
---Create a tray item with `icon`.
---@param icon Image
---@return Tray
function Tray.createwithimage(icon) end

---Create a tray item with only `title`.
---@param title string
---@return Tray
function Tray.createwithtitle(title) end

---Remove the tray item.
---@return nil
function Tray.remove() end

---Return the position and size of the tray item.
---@return RectF
function Tray.getbounds() end

---Set title to be displayed aside item's icon.
---@param title string
---@return nil
function Tray.settitle(title) end

---Set the `icon` of tray item.
---@param icon Image
---@return nil
function Tray.setimage(icon) end

---Set the `image` to show when tray item is pressed.
---@param image Image
---@return nil
function Tray.setpressedimage(image) end

---Set the menu attached with the tray item.
---@param menu Menu
---@return nil
function Tray.setmenu(menu) end

---Return the menu attached.
---@return Menu
function Tray.getmenu() end

return Tray
