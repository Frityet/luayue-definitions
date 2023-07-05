---@meta

--[[# Entry

### Single-line text input view.


[API Documentation](https://libyue.com/docs/latest/lua/api/entry.html#)
]]
---@class nu.Entry : nu.View
---@field ontextchange (fun(self: nu.Entry): nil) | nu.Signal Emitted when user has changed text.
---@field onactivate (fun(self: nu.Entry): nil) | nu.Signal Emitted when user has pressed <kbd>Enter</kbd> in the view.
local Entry = {}
--[[## Create a normal `Entry`.



]]
---@return nu.Entry
function Entry.create() end

--[[## Create an `Entry` with `type`.



]]
---@param type nu.Entry.Type
---@return nu.Entry
function Entry.createtype(type) end

--[[## Change the text in the view.



]]
---@param text string
---@return nil
function Entry:settext(text) end

--[[## Return currently displayed text.



]]
---@return string
function Entry:gettext() end

return Entry
