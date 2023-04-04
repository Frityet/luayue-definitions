---@meta

---Drawable view with child views.
---@class Container : View
local Container = {}
---Create a new container view.
---@return Container
function Container.create() end

---Get the minimum size to show all children of the view.  Note that if the view is using a `flex-wrap: wrap` style, this method might return a extremely wide/high size since it does not know the best width/height to show the children. 
---@return SizeF
function Container:getpreferredsize() end

---Return the minimum height to show all child of the view for the `width`. 
---@param width number
---@return number
function Container:getpreferredheightforwidth(width) end

---Return the minimum width to show all child of the view for the `height`. 
---@param height number
---@return number
function Container:getpreferredwidthforheight(height) end

---Append a child `view` to the container.  This method will silently fail if the `view` already has a parent. 
---@param view View
---@return nil
function Container:addchildview(view) end

---Add a child `view` to the container at `index`.  This method will silently fail if the `view` already has a parent. 
---@param view View, index integer
---@return nil
function Container:addchildviewat(view, index) end

---Remove a child `view` from this container.  This method will silently fail if the `view` is not a child of the container. 
---@param view View
---@return nil
function Container:removechildview(view) end

---Return the count of children in the container.
---@return integer
function Container:childcount() end

---Return the child `view` at `index`.  This method will silently fail if the `index` is out of range. 
---@param index integer
---@return View
function Container:childat(index) end

return Container
