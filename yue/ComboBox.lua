---@meta

---Choose a single item from a list of items or type a custom value.
---@class ComboBox : Picker
local ComboBox = {}
---Change the text in the view.
---@param text string
---@return nil
function ComboBox:settext(text) end

---Return currently displayed text.
---@return string
function ComboBox:gettext() end

return ComboBox
