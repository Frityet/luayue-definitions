---@meta

--[[# Tray

### Tray item displayed in system notification area.

#### Details

Platform limitations:

* On Linux tray items are displayed as app indicators.
* On Linux there is no fallback when app indicators are not supported.
* On Linux app indicator can only show when it has menu attached.
* On Windows you have to explicitly remove the tray item on exit, otherwise
  a zombie icon would be left.

[API Documentation](https://libyue.com/docs/latest/lua/api/tray.html#)
]]
---@class nu.Tray
---@field onclick (fun(self: nu.Tray): nil) | nu.Signal Emitted when the tray item is clicked.
local Tray = {}
--[[## Create a tray item with `icon`.



]]
---@param icon nu.Image
---@return nu.Tray
function Tray.createwithimage(icon) end

--[[## Create a tray item with only `title`.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param title string
---@return nu.Tray
function Tray.createwithtitle(title) end

--[[## Remove the tray item.



]]
---@return nil
function Tray:remove() end

--[[## Return the position and size of the tray item.

| ❗ This method is only available on the following platforms: macOS, Windows ❗ |
|---------------------------------------------------------------------------------|


]]
---@return nu.RectF
function Tray:getbounds() end

--[[## Set title to be displayed aside item's icon.

| ❗ This method is only available on the following platforms: macOS, Linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@param title string
---@return nil
function Tray:settitle(title) end

--[[## Set the `icon` of tray item.



]]
---@param icon nu.Image
---@return nil
function Tray:setimage(icon) end

--[[## Set the `image` to show when tray item is pressed.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param image nu.Image
---@return nil
function Tray:setpressedimage(image) end

--[[## Set the menu attached with the tray item.

#### Details

On most platforms the menu will show when clicking on the icon, while on
Windows the menu will only show when when right-clicking on the icon.


]]
---@param menu nu.Menu
---@return nil
function Tray:setmenu(menu) end

--[[## Return the menu attached.



]]
---@return nu.Menu
function Tray:getmenu() end

return Tray
