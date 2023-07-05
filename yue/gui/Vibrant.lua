---@meta

--[[# Vibrant

### Translucency view.

### Detail

### Details

This view is only implemented for macOS by wrapping
[`NSVisualEffectView`](https://developer.apple.com/documentation/appkit/nsvisualeffectview).

It is not possible to draw on this view, to display content on it you have to
add the content as child view.
[API Documentation](https://libyue.com/docs/latest/lua/api/vibrant.html#)
]]
---@class nu.Vibrant : nu.Container
local Vibrant = {}
--[[## Create a new `Vibrant` view.



]]
---@return nu.Vibrant 
function Vibrant.create() end

--[[## Set the material for the view.



]]
---@param material nu.Vibrant.Material 
---@return nil 
function Vibrant:setmaterial(material) end

--[[## Get the material for the view.



]]
---@return nu.Vibrant.Material 
function Vibrant:getmaterial() end

--[[## Set the blending mode for the view.



]]
---@param mode nu.Vibrant.BlendingMode 
---@return nil 
function Vibrant:setblendingmode(mode) end

--[[## Get the blending mode for the view.



]]
---@return nu.Vibrant.BlendingMode 
function Vibrant:getblendingmode() end

return Vibrant
