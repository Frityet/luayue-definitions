---@meta

--[[# Button

### Native button, can also be used as checkbox and radio button.


[API Documentation](https://libyue.com/docs/latest/lua/api/button.html#)
]]
---@class nu.Button : nu.View
---@field onclick (fun(self: nu.Button): nil) | nu.Signal Emitted when button is clicked.
local Button = {}
--[[## Create a normal button with `title`.



]]
---@param title string 
---@return nu.Button 
function Button.create(title) end

--[[## Create a button by reading `options`.



]]
---@param options table 
---@return nu.Button 
function Button.create(options) end

--[[## Mark this button as default button.



]]
---@return nil 
function Button:makedefault() end

--[[## Set button title.



]]
---@param title string 
---@return nil 
function Button:settitle(title) end

--[[## Return the button title.



]]
---@return string 
function Button:gettitle() end

--[[## Set `checked` state of checkbox or radio.



]]
---@param checked boolean 
---@return nil 
function Button:setchecked(checked) end

--[[## Return whether checkbox or radio is checked.



]]
---@return boolean 
function Button:ischecked() end

--[[## Set the image of button.



]]
---@param image nu.Image 
---@return nil 
function Button:setimage(image) end

--[[## Return the image of button.



]]
---@return nu.Image 
function Button:getimage() end

--[[## Set the visual style of the button.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param style nu.Button.Style 
---@return nil 
function Button:setbuttonstyle(style) end

--[[## Set the control size of the button.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param size nu.ControlSize 
---@return nil 
function Button:setcontrolsize(size) end

--[[## Set whether the button has a border.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param yes boolean 
---@return nil 
function Button:sethasborder(yes) end

--[[## Return whether the button has a border.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return boolean 
function Button:hasborder() end

return Button
