---@meta

--[[# ProtocolFileJob

### Read file to serve custom protocol requests.


[API Documentation](https://libyue.com/docs/latest/lua/api/protocolfilejob.html#)
]]
---@class nu.ProtocolFileJob : nu.ProtocolJob
local ProtocolFileJob = {}
--[[## Create a `ProtocolFileJob` with `path` to a local file.




]]
---@param path string 
---@return nu.ProtocolFileJob 
function ProtocolFileJob.create(path) end

return ProtocolFileJob
