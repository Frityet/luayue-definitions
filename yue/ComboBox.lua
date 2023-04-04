---@meta

---Choose a single item from a list of items or type a custom value.
---@class ComboBox : Picker
local ComboBox = {}
---Create a new `ComboBox` view.
---@return ComboBox
function ComboBox.create() end

---Change the text in the view.
---@param text string
---@return nil
function ComboBox.settext(text) end

---Return currently displayed text.
---@return string
function ComboBox.gettext() end

return ComboBox
