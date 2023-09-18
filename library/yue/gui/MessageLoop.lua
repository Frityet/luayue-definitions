---@meta

--[[# MessageLoop

### Post events to main GUI message loop.

### Details

Depending on the runtime you use, Yue may or may not provide this API.

Note that `MessageLoop` is a class instead of an instance, the APIs are
provided as class methods. This is because the `MessageLoop` does not manage
message loop, it just provides wrappers of system GUI message loop APIs.

This class can not be created by user, you can only call its class methods.

```lua
local gui = require('yue.gui')
gui.MessageLoop.run()
```

[API Documentation](https://libyue.com/docs/latest/lua/api/messageloop.html#)
]]
---@class nu.MessageLoop
local MessageLoop = {}
--[[## Enter GUI message loop.



]]
---@return nil
function MessageLoop.run() end

--[[## Quit current message loop.



]]
---@return nil
function MessageLoop.quit() end

--[[## Post a `task` to main thread's message loop.



]]
---@param task function
---@return nil
function MessageLoop.posttask(task) end

--[[## Post a `task` to main thread's message loop and execute it after `ms`.




]]
---@param ms integer
---@param task function
---@return nil
function MessageLoop.postdelayedtask(ms, task) end

return MessageLoop
