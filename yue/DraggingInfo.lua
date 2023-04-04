---@meta

---Information about a dragging session.
---@class DraggingInfo
local DraggingInfo = {}
---Return whether the data of `type` is available.
---@param type Clipboard::Data::Type
---@return boolean
function DraggingInfo:isdataavailable(type) end

---Get the data of `type` from clipboard.
---@param type Clipboard::Data::Type
---@return Clipboard::Data
function DraggingInfo:getdata(type) end

---Return the drag operation supported by drag source.
---@return integer
function DraggingInfo:getdragoperations() end

return DraggingInfo