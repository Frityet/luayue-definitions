---@meta

--[[
Multipage view with tabs.
]]
---@class Tab : View
---@field onselectedpagechange fun(self: Tab): nil Emitted when user has changed the selected page.
local Tab = {}
---Create a new `Tab` view.
---@return Tab
function Tab.create() end

---Add `view` as a new page with `title`.
---@param title string
---@param view View
---@return nil
function Tab:addpage(title, view) end

---Remove the page that shows `view`.
---@param view View
---@return nil
function Tab:removepage(view) end

---Return the number of pages.
---@return integer
function Tab:pagecount() end

---Return the view of page at `index`.
---@param index integer
---@return View
function Tab:pageat(index) end

---Select the page at `index`.
---@param index integer
---@return nil
function Tab:selectpageat(index) end

---Return the index of selected page.
---@return integer
function Tab:getselectedpageindex() end

---Return the view of selected page.
---@return View
function Tab:getselectedpage() end

return Tab
