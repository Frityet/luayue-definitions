---@meta

--[[# DraggingInfo

### Information about a dragging session.

### Detail

### Details

This class can not be created by user, its instance can only be received in
the drag and drop events.
[API Documentation](https://libyue.com/docs/latest/lua/api/dragginginfo.html#)
]]
---@class nu.DraggingInfo
local DraggingInfo = {}
--[[## Return whether the data of `type` is available.

### Details

On Linux the dragged data is only available in the `handle_drop` delegate.


]]
---@param type nu.Clipboard.Data.Type
---@return boolean
function DraggingInfo:isdataavailable(type) end

--[[## Get the data of `type` from clipboard.

### Details

On Linux the dragged data is only available in the `handle_drop` delegate.

You should always check the type of returned data before using it.


]]
---@param type nu.Clipboard.Data.Type
---@return nu.Clipboard.Data
function DraggingInfo:getdata(type) end

--[[## Return the drag operation supported by drag source.

### Details

Most drag sources support multiple types of operations, you should always
check whether an operation is supported by using bitwise AND operator.


]]
---@return integer
function DraggingInfo:getdragoperations() end

return DraggingInfo
