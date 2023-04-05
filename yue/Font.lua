---@meta

--[[### Native font.

]]
---@class Font
local Font = {}
--[[Return the default font used for displaying text.]]
---@return Font 
function Font.default() end

--[[Create a Font implementation with the specified `name`, DIP `size`,
`weight` and `style`.
]]
---@param name string 
---@param size number 
---@param weight Font.Weight 
---@param style Font.Style 
---@return Font 
function Font.create(name, size, weight, style) end

--[[Create a Font by reading from |path|. If the font file contains multiple
families or weights, only the first encountered font will be used.
]]
---@param path string 
---@param size number 
---@return Font 
function Font.createfrompath(path, size) end

--[[Returns a new Font derived from the existing font.]]
---@param sizedelta number 
---@param weight Font.Weight 
---@param style Font.Style 
---@return Font 
function Font:derive(sizedelta, weight, style) end

--[[Return font's family name.]]
---@return string 
function Font:getname() end

--[[Return font's DIP size.]]
---@return number 
function Font:getsize() end

--[[Return the font weight.]]
---@return Font::Weight 
function Font:getweight() end

--[[Return the font style.]]
---@return Font::Style 
function Font:getstyle() end

return Font
