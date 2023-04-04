---@meta

---Show a part of view with scrollbar.
---@class Scroll : View
local Scroll = {}
---Set the content `view`.
---@param view View
---@return nil
function Scroll:setcontentview(view) end

---Return the content `view`.
---@return View
function Scroll:getcontentview() end

---Set the size of content view.
---@param size SizeF
---@return nil
function Scroll:setcontentsize(size) end

---Return the size of content view.
---@return SizeF
function Scroll:getcontentsize() end

---Scroll to the `horizon` and `vertical` position.
---@param horizon number, vertical number
---@return nil
function Scroll:setscrollposition(horizon, vertical) end

---Return the horizon and vertical scroll position.
---@return std::tuple
function Scroll:getscrollposition() end

---Return the maximum horizon and vertical scroll position.
---@return std::tuple
function Scroll:getmaximumscrollposition() end

---Set whether to use overlay scrolling.
---@param overlay boolean
---@return nil
function Scroll:setoverlayscrollbar(overlay) end

---Return whether overlay scrolling is used.
---@return boolean
function Scroll:isoverlayscrollbar() end

---Set the policy for displaying horizontal and vertical scrollbars. 
---@param hpolicy Scroll::Policy, vpolicy Scroll::Policy
---@return nil
function Scroll:setscrollbarpolicy(hpolicy, vpolicy) end

---Return the display policy of horizontal and vertical scrollbars. 
---@return std::tuple
function Scroll:getscrollbarpolicy() end

---Set horizontal and vertical scroll elasticity (bounce). 
---@param helasticity Scroll::Elasticity, velasticity Scroll::Elasticity
---@return nil
function Scroll:setscrollelasticity(helasticity, velasticity) end

---Return the horizontal and vertical scroll elasticity. 
---@return std::tuple
function Scroll:getscrollelasticity() end

return Scroll
