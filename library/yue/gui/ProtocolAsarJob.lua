---@meta

--[[# ProtocolAsarJob

### Read asar archives to serve custom protocol requests.

### Detail

### Details

The asar format is a simple extensive archive format, information of it can be
found at https://github.com/electron/asar.

As an experimental feature, Yue supports reading from encrypted asar archives,
which has not been a standard feature of asar yet but will probably be in
future. More about this can be found at https://github.com/yue/muban.
[API Documentation](https://libyue.com/docs/latest/lua/api/protocolasarjob.html#)
]]
---@class nu.ProtocolAsarJob : nu.ProtocolJob
local ProtocolAsarJob = {}
--[[## Create a `ProtocolAsarJob` with `path` to a file inside an `asar` archive.




]]
---@param asar string
---@param path string
---@return nu.ProtocolAsarJob
function ProtocolAsarJob.create(asar, path) end

--[[## Set the `key` and `iv` used to read from an encrypted asar archive, return
`false` when the `key` and `iv` are not 16 bytes length.


### Details

The encrypted asar archives use AES128 ECB algorithm for encryption, with
PKCS#7 padding.


]]
---@param key string
---@param iv string
---@return boolean
function ProtocolAsarJob:setdecipher(key, iv) end

return ProtocolAsarJob
