---@meta

---Read asar archives to serve custom protocol requests.
---@class ProtocolAsarJob : ProtocolJob
local ProtocolAsarJob = {}
---Create a `ProtocolAsarJob` with `path` to a file inside an `asar` archive. 
---@param asar string
---@param path string
---@return ProtocolAsarJob
function ProtocolAsarJob.create(asar, path) end

---Set the `key` and `iv` used to read from an encrypted asar archive, return `false` when the `key` and `iv` are not 16 bytes length. 
---@param key string
---@param iv string
---@return boolean
function ProtocolAsarJob:setdecipher(key, iv) end

return ProtocolAsarJob
