---@meta

---Post events to main GUI message loop.
---@class MessageLoop
local MessageLoop = {}
---Enter GUI message loop.
---@return nil
function MessageLoop.run() end

---Quit current message loop.
---@return nil
function MessageLoop.quit() end

---Post a `task` to main thread's message loop.
---@param task function
---@return nil
function MessageLoop.posttask(task) end

---Post a `task` to main thread's message loop and execute it after `ms`. 
---@param ms integer, task function
---@return nil
function MessageLoop.postdelayedtask(ms, task) end

return MessageLoop
