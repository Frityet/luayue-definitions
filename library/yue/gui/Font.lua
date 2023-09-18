---@meta

--[[# Font

### Native font.


[API Documentation](https://libyue.com/docs/latest/lua/api/font.html#)
]]
---@class nu.Font
local Font = {}
--[[## Return the default font used for displaying text.



]]
---@return nu.Font 
function Font.default() end

--[[## Create a Font implementation with the specified `name`, DIP `size`,
`weight` and `style`.




]]
---@param name string 
---@param size number 
---@param weight nu.Font.Weight 
---@param style nu.Font.Style 
---@return nu.Font 
function Font.create(name, size, weight, style) end

--[[## Create a Font by reading from |path|. If the font file contains multiple
families or weights, only the first encountered font will be used.




]]
---@param path string 
---@param size number 
---@return nu.Font 
function Font.createfrompath(path, size) end

--[[## Returns a new Font derived from the existing font.

### Details

The `size_delta` is the size in DIP to add to the current font.

]]
---@param sizedelta number 
---@param weight nu.Font.Weight 
---@param style nu.Font.Style 
---@return nu.Font 
function Font:derive(sizedelta, weight, style) end

--[[## Return font's family name.



]]
---@return string 
function Font:getname() end

--[[## Return font's DIP size.



]]
---@return number 
function Font:getsize() end

--[[## Return the font weight.



]]
---@return nu.Font.Weight 
function Font:getweight() end

--[[## Return the font style.



]]
---@return nu.Font.Style 
function Font:getstyle() end

return Font
