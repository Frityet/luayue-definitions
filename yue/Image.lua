---@meta

--[[## High DPI Image

By appending `@{scaleFactor}x` to the image's base filename, you can mark
the image as a high DPI image. For example an image file with filename of
`icon@2x.png` will have scale factor of 2.

## Template Image

On macOS you can mark an image as template image by putting `Template` to
its base filename, for example `iconTemplate.png` and `iconTemplate@2x.png`.

Template images should consist of only black and clear colors, and macOS will
mix with other content to create best appearance. This is useful for tray
icons and menu item icons that automatically adjust to light and dark themes.
]]
---Native image.
---@class Image 
local Image = {}
--[[Create an empty image.]]
---@return Image 
function Image.createempty() end

--[[Create an image by reading from `path`.]]
---@param path string 
---@return Image 
function Image.createfrompath(path) end

--[[Create an image from `buffer` in memory, with `scale_factor`.
]]
---@param buffer string 
---@param scalefactor number 
---@return Image 
function Image.createfrombuffer(buffer, scalefactor) end

--[[Return whether the image has any data.]]
---@return boolean 
function Image:isempty() end

--[[Set whether the image is a template image.]]
---@param is boolean 
---@return nil 
function Image:settemplate(is) end

--[[Return whether the image is a template image.]]
---@return boolean 
function Image:istemplate() end

--[[Return image's size in DIP.]]
---@return SizeF 
function Image:getsize() end

--[[Return image's scale factor.]]
---@return number 
function Image:getscalefactor() end

--[[Return a new image that has tint color applied.]]
---@param color Color 
---@return Image 
function Image:tint(color) end

return Image
