---@meta

---Read file to serve custom protocol requests.
---@class ProtocolFileJob : ProtocolJob
local ProtocolFileJob = {}
---Create a `ProtocolFileJob` with `path` to a local file. 
---@param path string
---@return ProtocolFileJob
function ProtocolFileJob.create(path) end

return ProtocolFileJob
