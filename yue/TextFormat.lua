---@meta

--[[### Options for layouting text.

]]
---@class TextFormat
---@field align TextAlign Horizontal text align, default is to the start of layout.
---@field valign TextAlign Vertical text align, default is to the start of layout.
---@field wrap boolean Whether to wrap lines, default is `true`.
---@field ellipsis boolean Whether to show ellipsis (...) at the end of the last visible line if the text doesn't fit into the bounds specified, default is `false`. 
local TextFormat = {}
return TextFormat
