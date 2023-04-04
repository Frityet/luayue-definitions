---@meta

---Image view with animated GIF support.
---@class GifPlayer : View
local GifPlayer = {}
---Create a new `GifPlayer`.
---@return GifPlayer
function GifPlayer.create() end

---Set the image.
---@param image Image
---@return nil
function GifPlayer:setimage(image) end

---Return the image.
---@return Image
function GifPlayer:getimage() end

---Set whether the animated image should be played.
---@param animating boolean
---@return nil
function GifPlayer:setanimating(animating) end

---Return whether the image is animating.
---@return boolean
function GifPlayer:isanimating() end

---Set the scaling mode.
---@param scale ImageScale
---@return nil
function GifPlayer:setscale(scale) end

---Return the scaling mode.
---@return ImageScale
function GifPlayer:getscale() end

return GifPlayer
