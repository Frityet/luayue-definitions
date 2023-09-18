---@meta

--[[# Picker

### Choose a single item from a list of items.

### Details

By default, the first item is automatically selected, and duplicate items
are merged into one.

[API Documentation](https://libyue.com/docs/latest/lua/api/picker.html#)
]]
---@class nu.Picker : nu.View
---@field onselectionchange (fun(self: nu.Picker): nil) | nu.Signal Emitted when user has changed the selected item.
local Picker = {}
--[[## Create a new `Picker` view.



]]
---@return nu.Picker
function Picker.create() end




--[[## Add an item with `title` to the end.



]]
---@param title string
---@return nil
function Picker:additem(title) end

--[[## Remove the item at `index`.



]]
---@param index integer
---@return nil
function Picker:removeitemat(index) end

--[[## Remove all items.



]]
---@return nil
function Picker:clear() end

--[[## Return all items.



]]
---@return table
function Picker:getitems() end

--[[## Select the item at `index`.



]]
---@param index integer
---@return nil
function Picker:selectitemat(index) end

--[[## Return the title of selected item.

### Details

Empty string is returned if there is no selected item.

]]
---@return string
function Picker:getselecteditem() end

--[[## Return the index of selected item.

### Details

-1 is returned if there is no selected item.

]]
---@return integer
function Picker:getselecteditemindex() end

return Picker
