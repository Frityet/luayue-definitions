---@meta

--[[# Scroll

### Show a part of view with scrollbar.

### Details

The `Scroll` view can show an arbitrary content view inside it.

When the content is larger than the `Scroll` view, scrollbars will be
optionally showed. When the content view is smaller then the `Scroll` view,
the content view will be resized to the size of the `Scroll` view.

[API Documentation](https://libyue.com/docs/latest/lua/api/scroll.html#)
]]
---@class nu.Scroll : nu.View
---@field onscroll (fun(self: nu.Scroll): nil) | nu.Signal Emitted when the content view is being scrolled.
local Scroll = {}
--[[## Create a new `Scroll` view.



]]
---@return nu.Scroll 
function Scroll.create() end

--[[## Set the content `view`.



]]
---@param view nu.View 
---@return nil 
function Scroll:setcontentview(view) end

--[[## Return the content `view`.



]]
---@return nu.View 
function Scroll:getcontentview() end

--[[## Set the size of content view.



]]
---@param size nu.SizeF 
---@return nil 
function Scroll:setcontentsize(size) end

--[[## Return the size of content view.



]]
---@return nu.SizeF 
function Scroll:getcontentsize() end

--[[## Scroll to the `horizon` and `vertical` position.



]]
---@param horizon number 
---@param vertical number 
---@return nil 
function Scroll:setscrollposition(horizon, vertical) end

--[[## Return the horizon and vertical scroll position.



]]
---@return nu.std.tuple 
function Scroll:getscrollposition() end

--[[## Return the maximum horizon and vertical scroll position.



]]
---@return nu.std.tuple 
function Scroll:getmaximumscrollposition() end

--[[## Set whether to use overlay scrolling.

| ❗ This method is only available on the following platforms: macOS, linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@param overlay boolean 
---@return nil 
function Scroll:setoverlayscrollbar(overlay) end

--[[## Return whether overlay scrolling is used.

| ❗ This method is only available on the following platforms: macOS, linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@return boolean 
function Scroll:isoverlayscrollbar() end

--[[## Set the policy for displaying horizontal and vertical scrollbars.




]]
---@param hpolicy nu.Scroll.Policy 
---@param vpolicy nu.Scroll.Policy 
---@return nil 
function Scroll:setscrollbarpolicy(hpolicy, vpolicy) end

--[[## Return the display policy of horizontal and vertical scrollbars.




]]
---@return nu.std.tuple 
function Scroll:getscrollbarpolicy() end

--[[## Set horizontal and vertical scroll elasticity (bounce).


| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param helasticity nu.Scroll.Elasticity 
---@param velasticity nu.Scroll.Elasticity 
---@return nil 
function Scroll:setscrollelasticity(helasticity, velasticity) end

--[[## Return the horizontal and vertical scroll elasticity.


| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return nu.std.tuple 
function Scroll:getscrollelasticity() end

return Scroll
