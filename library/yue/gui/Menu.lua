---@meta

--[[# Menu

### Popup menu.


[API Documentation](https://libyue.com/docs/latest/lua/api/menu.html#)
]]
---@class nu.Menu : nu.MenuBase
local Menu = {}
--[[## Create a popup menu.



]]
---@param items table
---@return nu.Menu
function Menu.create(items) end

--[[## Show the popup menu at current mouse position, this method will block
until the menu is dismissed.




]]
---@return nil
function Menu:popup() end

--[[## Show the popup menu at |point|, this method will block until the menu is
dismissed.




]]
---@param point nu.PointF
---@return nil
function Menu:popupat(point) end

return Menu
