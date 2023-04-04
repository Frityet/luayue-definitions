---@meta

---Single-line text input view.
---@class Entry : View
local Entry = {}
---Change the text in the view.
---@param text string
---@return nil
function Entry:settext(text) end

---Return currently displayed text.
---@return string
function Entry:gettext() end

return Entry
