---@meta

--[[# Tab

### Multipage view with tabs.


[API Documentation](https://libyue.com/docs/latest/lua/api/tab.html#)
]]
---@class nu.Tab : nu.View
---@field onselectedpagechange (fun(self: nu.Tab): nil) | nu.Signal Emitted when user has changed the selected page.
local Tab = {}
--[[## Create a new `Tab` view.



]]
---@return nu.Tab
function Tab.create() end

--[[## Add `view` as a new page with `title`.



]]
---@param title string
---@param view nu.View
---@return nil
function Tab:addpage(title, view) end

--[[## Remove the page that shows `view`.



]]
---@param view nu.View
---@return nil
function Tab:removepage(view) end

--[[## Return the number of pages.



]]
---@return integer
function Tab:pagecount() end

--[[## Return the view of page at `index`.



]]
---@param index integer
---@return nu.View
function Tab:pageat(index) end

--[[## Select the page at `index`.



]]
---@param index integer
---@return nil
function Tab:selectpageat(index) end

--[[## Return the index of selected page.



]]
---@return integer
function Tab:getselectedpageindex() end

--[[## Return the view of selected page.



]]
---@return nu.View
function Tab:getselectedpage() end

return Tab
