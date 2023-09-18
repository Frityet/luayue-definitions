---@meta

--[[# Signal

### Connect and emit events.

### Details


This class implements the signal/slot pattern, which is used as event type.

[API Documentation](https://libyue.com/docs/latest/lua/api/signal.html#)
]]
---@class nu.Signal
local Signal = {}
--[[## Connect `slot` to the signal, and return an ID that can be used to
disconnect it.

The signature of `slot` must match the event's type.




]]
---@param slot function
---@return integer
function Signal:connect(slot) end

--[[## Disconnect the `id` from the signal.



]]
---@param id integer
---@return nil
function Signal:disconnect(id) end

--[[## Disconnect all slots in the signal.



]]
---@return nil
function Signal:disconnectall() end

--[[## Return `true` if there is no slot connected to the signal.



]]
---@return boolean
function Signal:isempty() end

return Signal
