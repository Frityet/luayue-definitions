---@meta

---Native image.
---@class Image
local Image = {}
---Return whether the image has any data.
---@return boolean
function Image:isempty() end

---Set whether the image is a template image.
---@param is boolean
---@return nil
function Image:settemplate(is) end

---Return whether the image is a template image.
---@return boolean
function Image:istemplate() end

---Return image's size in DIP.
---@return SizeF
function Image:getsize() end

---Return image's scale factor.
---@return number
function Image:getscalefactor() end

---Return a new image that has tint color applied.
---@param color Color
---@return Image
function Image:tint(color) end

return Image
