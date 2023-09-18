---@meta

--[[# ProtocolStringJob

### Use string as response to custom protocol requests.


[API Documentation](https://libyue.com/docs/latest/lua/api/protocolstringjob.html#)
]]
---@class nu.ProtocolStringJob : nu.ProtocolJob
local ProtocolStringJob = {}
--[[## Create a `ProtocolStringJob` with `mimetype` and `content`.




]]
---@param mimetype string 
---@param content string 
---@return nu.ProtocolStringJob 
function ProtocolStringJob.create(mimetype, content) end

return ProtocolStringJob
