---@meta

--[[# ComboBox

### Choose a single item from a list of items or type a custom value.

#### Details

The `ComboBox` behaves differently from `Picker` that:
1. no item is selected by default;
2. duplicate items are allowed.

[API Documentation](https://libyue.com/docs/latest/lua/api/combobox.html#)
]]
---@class nu.ComboBox : nu.Picker
---@field ontextchange (fun(self: nu.Entry): nil) | nu.Signal Emitted when user has changed text.
local ComboBox = {}
--[[## Create a new `ComboBox` view.



]]
---@return nu.ComboBox
function ComboBox.create() end

--[[## Change the text in the view.



]]
---@param text string
---@return nil
function ComboBox:settext(text) end

--[[## Return currently displayed text.



]]
---@return string
function ComboBox:gettext() end

return ComboBox
