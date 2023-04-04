---@meta

---32-bit Color with alpha channel.
---@class Color
local Color = {}
---Return the color with theme `name`.
---@param name Color::Name
---@return Color
function Color.get(name) end

---Create an opaque RGB color.
---@param r integer, g integer, b integer
---@return Color
function Color.rgb(r, g, b) end

---Create an ARGB color.
---@param a integer, r integer, g integer, b integer
---@return Color
function Color.argb(a, r, g, b) end

return Color
