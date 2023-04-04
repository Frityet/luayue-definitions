---@meta

---Choose a single item from a list of items.
---@class Picker : View
local Picker = {}
---Add an item with `title` to the end.
---@param title string
---@return nil
function Picker:additem(title) end

---Remove the item at `index`.
---@param index integer
---@return nil
function Picker:removeitemat(index) end

---Return all items.
---@return table
function Picker:getitems() end

---Select the item at `index`.
---@param index integer
---@return nil
function Picker:selectitemat(index) end

---Return the title of selected item.
---@return string
function Picker:getselecteditem() end

---Return the index of selected item.
---@return integer
function Picker:getselecteditemindex() end

return Picker
