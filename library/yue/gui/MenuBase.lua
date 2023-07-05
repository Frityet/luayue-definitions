---@meta

--[[# MenuBase

### Base class of menu bar and popup menu.

#### Details


Note that the `index` counts from `1`, following lua's convention.

[API Documentation](https://libyue.com/docs/latest/lua/api/menubase.html#)
]]
---@class nu.MenuBase
local MenuBase = {}
--[[## Append the `item` to the menu.



]]
---@param item nu.MenuItem 
---@return nil 
function MenuBase:append(item) end

--[[## Insert the `item` at `index` to the menu.



]]
---@param item nu.MenuItem 
---@param index integer 
---@return nil 
function MenuBase:insert(item, index) end

--[[## Remove the `item` from the menu.



]]
---@param item nu.MenuItem 
---@return nil 
function MenuBase:remove(item) end

--[[## Return the count of items in the menu.



]]
---@return integer 
function MenuBase:itemcount() end

--[[## Return the item at `index`.



]]
---@param index integer 
---@return nu.MenuItem 
function MenuBase:itemat(index) end

return MenuBase
