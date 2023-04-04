---@meta

---Use string as response to custom protocol requests.
---@class ProtocolStringJob : ProtocolJob
local ProtocolStringJob = {}
---Create a `ProtocolStringJob` with `mimetype` and `content`. 
---@param mimetype string, content string
---@return ProtocolStringJob
function ProtocolStringJob.create(mimetype, content) end

return ProtocolStringJob
