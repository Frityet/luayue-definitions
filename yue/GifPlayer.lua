---@meta

--[[# Image view with animated GIF support.

It can also display other types of images, but only GIF images can be
animated.

Displaying animated GIF images consumes lots of CPU resources, it is highly
unrecommended to constantly display animated GIF images.

For optimization, hiding the view would automatically pause the animation,
and showing the view would automatically resume previous state.
]]
---@class GifPlayer : View
local GifPlayer = {}
--[[Create a new `GifPlayer`.]]
---@return GifPlayer 
function GifPlayer.create() end

--[[Set the image.]]
---@param image Image 
---@return nil 
function GifPlayer:setimage(image) end

--[[Return the image.]]
---@return Image 
function GifPlayer:getimage() end

--[[Set whether the animated image should be played.]]
---@param animating boolean 
---@return nil 
function GifPlayer:setanimating(animating) end

--[[Return whether the image is animating.]]
---@return boolean 
function GifPlayer:isanimating() end

--[[Set the scaling mode.]]
---@param scale ImageScale 
---@return nil 
function GifPlayer:setscale(scale) end

--[[Return the scaling mode.]]
---@return ImageScale 
function GifPlayer:getscale() end

return GifPlayer
