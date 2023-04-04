---@meta

---Base class of menu bar and popup menu.
---@class MenuBase
local MenuBase = {}
---Append the `item` to the menu.
---@param item MenuItem
---@return nil
function MenuBase.append(item) end

---Insert the `item` at `index` to the menu.
---@param item MenuItem, index integer
---@return nil
function MenuBase.insert(item, index) end

---Remove the `item` from the menu.
---@param item MenuItem
---@return nil
function MenuBase.remove(item) end

---Return the count of items in the menu.
---@return integer
function MenuBase.itemcount() end

---Return the item at `index`.
---@param index integer
---@return MenuItem
function MenuBase.itemat(index) end

return MenuBase
