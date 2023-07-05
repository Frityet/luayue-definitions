---@meta

--[[# Group

### Display a container view with title and border.


[API Documentation](https://libyue.com/docs/latest/lua/api/group.html#)
]]
---@class nu.Group : nu.View
local Group = {}
--[[## Create a new `Group` with `title`.



]]
---@param title string
---@return nu.Group
function Group.create(title) end

--[[## Set the content view.



]]
---@param view nu.Container
---@return nil
function Group:setcontentview(view) end

--[[## Return the content view.



]]
---@return nu.Container
function Group:getcontentview() end

--[[## Set the title.



]]
---@param title string
---@return nil
function Group:settitle(title) end

--[[## Return the title.



]]
---@return string
function Group:gettitle() end

return Group
