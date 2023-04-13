---@meta

--[[# Operations of dragging.

The `DragOperation` are integer masks that can be operated with bitwise
operators.

The `None` operation means dragging is not allowed, and it should not be used
together with other operations.

The values of `DragOperation` are available as the class properties of the
`<!type>DraggingInfo` class.
]]
---@class DragOperation
local DragOperation = {}
return DragOperation
