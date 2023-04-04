---@meta

---Translucency view.
---@class Vibrant : Container
local Vibrant = {}
---Set the material for the view.
---@param material Vibrant::Material
---@return nil
function Vibrant:setmaterial(material) end

---Get the material for the view.
---@return Vibrant::Material
function Vibrant:getmaterial() end

---Set the blending mode for the view.
---@param mode Vibrant::BlendingMode
---@return nil
function Vibrant:setblendingmode(mode) end

---Get the blending mode for the view.
---@return Vibrant::BlendingMode
function Vibrant:getblendingmode() end

return Vibrant
