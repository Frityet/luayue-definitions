---@meta

---Display a container view with title and border.
---@class Group : View
local Group = {}
---Create a new `Group` with `title`.
---@param title string
---@return Group
function Group.create(title) end

---Set the content view.
---@param view Container
---@return nil
function Group:setcontentview(view) end

---Return the content view.
---@return Container
function Group:getcontentview() end

---Set the title.
---@param title string
---@return nil
function Group:settitle(title) end

---Return the title.
---@return string
function Group:gettitle() end

return Group
