---@meta

---Menu item.
---@class MenuItem
local MenuItem = {}
---Create a menu item with `type`.
---@param type MenuItem::Type
---@return MenuItem
function MenuItem.create(type) end

---Create a menu item with `options`.
---@param options table
---@return MenuItem
function MenuItem.create(options) end

---Emulate user clicking the menu item.
---@return nil
function MenuItem.click() end

---Change the item's label.
---@param label string
---@return nil
function MenuItem.setlabel(label) end

---Return the item's label.
---@return string
function MenuItem.getlabel() end

---Set the submenu attached to the item.  This method only works for `submenu` type menu items. 
---@param submenu Menu
---@return nil
function MenuItem.setsubmenu(submenu) end

---Return the submenu attached to the item.
---@return Menu
function MenuItem.getsubmenu() end

---Set the `checked` state of the item.  This method only works for `radio` and `checkbox` type menu items. 
---@param checked boolean
---@return nil
function MenuItem.setchecked(checked) end

---Return the `checked` state of the item.
---@return boolean
function MenuItem.ischecked() end

---Enable/disable the item.
---@param enabled boolean
---@return nil
function MenuItem.setenabled(enabled) end

---Return whether the item is enabled.
---@return boolean
function MenuItem.isenabled() end

---Show/hide the item.
---@param visible boolean
---@return nil
function MenuItem.setvisible(visible) end

---Return whether the item is visible to users.
---@return boolean
function MenuItem.isvisible() end

---Set the `accelerator` used to activate the item.
---@param accelerator Accelerator
---@return nil
function MenuItem.setaccelerator(accelerator) end

---Set the item's image.
---@param image Image
---@return nil
function MenuItem.setimage(image) end

---Return the item's image.
---@return Image
function MenuItem.getimage() end

return MenuItem
