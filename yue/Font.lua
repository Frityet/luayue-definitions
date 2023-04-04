---@meta

---Native font.
---@class Font
local Font = {}
---Returns a new Font derived from the existing font.
---@param sizedelta number, weight Font::Weight, style Font::Style
---@return Font
function Font:derive(sizedelta, weight, style) end

---Return font's family name.
---@return string
function Font:getname() end

---Return font's DIP size.
---@return number
function Font:getsize() end

---Return the font weight.
---@return Font::Weight
function Font:getweight() end

---Return the font style.
---@return Font::Style
function Font:getstyle() end

return Font
