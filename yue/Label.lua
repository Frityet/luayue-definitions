---@meta

---Display text.
---@class Label : View
local Label = {}
---Create a new `Label` with `text`.
---@param text string
---@return Label
function Label.create(text) end

---Create a new `Label` with attributed `text`.
---@param text AttributedText
---@return Label
function Label.createwithattributedtext(text) end

---Set the text to display.
---@param text string
---@return nil
function Label.settext(text) end

---Return the text displayed.
---@return string
function Label.gettext() end

---Set horizontal text alignment.
---@param align TextAlign
---@return nil
function Label.setalign(align) end

---Set vertical text alignment.
---@param align TextAlign
---@return nil
function Label.setvalign(align) end

---Set the attributed text to display.
---@param text AttributedText
---@return nil
function Label.setattributedtext(text) end

---Return the attributed text displayed.
---@return AttributedText
function Label.getattributedtext() end

return Label
