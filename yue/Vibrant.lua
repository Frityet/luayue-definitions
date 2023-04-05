---@meta

--[[# Translucency view.

This view is only implemented for macOS by wrapping
[`NSVisualEffectView`](https://developer.apple.com/documentation/appkit/nsvisualeffectview).

It is not possible to draw on this view, to display content on it you have to
add the content as child view.
]]
---@class Vibrant : Container
local Vibrant = {}
--[[Create a new `Vibrant` view.]]
---@return Vibrant 
function Vibrant.create() end

--[[Set the material for the view.]]
---@param material Vibrant.Material 
---@return nil 
function Vibrant:setmaterial(material) end

--[[Get the material for the view.]]
---@return Vibrant::Material 
function Vibrant:getmaterial() end

--[[Set the blending mode for the view.]]
---@param mode Vibrant.BlendingMode 
---@return nil 
function Vibrant:setblendingmode(mode) end

--[[Get the blending mode for the view.]]
---@return Vibrant::BlendingMode 
function Vibrant:getblendingmode() end

return Vibrant
