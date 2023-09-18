---@meta

--[[# TextFormat

### Options for layouting text.


[API Documentation](https://libyue.com/docs/latest/lua/api/textformat.html#)
]]
---@class nu.TextFormat
---@field align nu.TextAlign Horizontal text align, default is to the start of layout.
---@field valign nu.TextAlign Vertical text align, default is to the start of layout.
---@field wrap boolean Whether to wrap lines, default is `true`.
---@field ellipsis boolean Whether to show ellipsis (...) at the end of the last visible line if the text doesn't fit into the bounds specified, default is `false`.
local TextFormat = {}
return TextFormat
