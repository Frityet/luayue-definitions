---@meta

--[[The `ComboBox` behaves differently from `Picker` that:
1. no item is selected by default;
2. duplicate items are allowed.
]]
---Choose a single item from a list of items or type a custom value.
---@class ComboBox : Picker
---@field ontextchange fun(self: Entry) 
local ComboBox = {}
--[[Create a new `ComboBox` view.]]
---@return ComboBox 
function ComboBox.create() end

--[[Change the text in the view.]]
---@param text string 
---@return nil 
function ComboBox:settext(text) end

--[[Return currently displayed text.]]
---@return string 
function ComboBox:gettext() end

return ComboBox
