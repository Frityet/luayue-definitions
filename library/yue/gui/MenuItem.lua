---@meta

--[[# MenuItem

### Menu item.


[API Documentation](https://libyue.com/docs/latest/lua/api/menuitem.html#)
]]
---@class nu.MenuItem
---@field onclick (fun(self: nu.MenuItem): nil) | nu.Signal Emitted when item is clicked.
---@field validate (fun(self: nu.MenuItem): boolean) Called before the item shows or activates, should return whether the item is enabled.
local MenuItem = {}
--[[## Create a menu item with `type`.



]]
---@param type nu.MenuItem.Type
---@return nu.MenuItem
function MenuItem.create(type) end

--[[## Create a menu item with `options`.



]]
---@param options table
---@return nu.MenuItem
function MenuItem.create(options) end

--[[## Emulate user clicking the menu item.



]]
---@return nil
function MenuItem:click() end

--[[## Change the item's label.



]]
---@param label string
---@return nil
function MenuItem:setlabel(label) end

--[[## Return the item's label.



]]
---@return string
function MenuItem:getlabel() end

--[[## Set the submenu attached to the item.

This method only works for `submenu` type menu items.




]]
---@param submenu nu.Menu
---@return nil
function MenuItem:setsubmenu(submenu) end

--[[## Return the submenu attached to the item.



]]
---@return nu.Menu
function MenuItem:getsubmenu() end

--[[## Set the `checked` state of the item.

This method only works for `radio` and `checkbox` type menu items.




]]
---@param checked boolean
---@return nil
function MenuItem:setchecked(checked) end

--[[## Return the `checked` state of the item.



]]
---@return boolean
function MenuItem:ischecked() end

--[[## Enable/disable the item.



]]
---@param enabled boolean
---@return nil
function MenuItem:setenabled(enabled) end

--[[## Return whether the item is enabled.



]]
---@return boolean
function MenuItem:isenabled() end

--[[## Show/hide the item.



]]
---@param visible boolean
---@return nil
function MenuItem:setvisible(visible) end

--[[## Return whether the item is visible to users.



]]
---@return boolean
function MenuItem:isvisible() end

--[[## Set the `accelerator` used to activate the item.



]]
---@param accelerator nu.Accelerator
---@return nil
function MenuItem:setaccelerator(accelerator) end

--[[## Set the item's image.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|


]]
---@param image nu.Image
---@return nil
function MenuItem:setimage(image) end

--[[## Return the item's image.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|


]]
---@return nu.Image
function MenuItem:getimage() end

return MenuItem
