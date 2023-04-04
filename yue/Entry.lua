---@meta

---Single-line text input view.
---@class Entry : View
local Entry = {}
---Create a normal `Entry`.
---@return Entry
function Entry.create() end

---Create an `Entry` with `type`.
---@param type Entry::Type
---@return Entry
function Entry.createtype(type) end

---Change the text in the view.
---@param text string
---@return nil
function Entry:settext(text) end

---Return currently displayed text.
---@return string
function Entry:gettext() end

return Entry