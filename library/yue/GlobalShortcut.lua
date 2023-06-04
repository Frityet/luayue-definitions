---@meta

--[[# Register global keyboard shortcuts.


This class can not be created by user, you can only receive its global
instance from the `globalshortcut` property of the module:

```lua
gui.globalshortcut:unregisterall()
```
]]
---@class GlobalShortcut
local GlobalShortcut = {}
--[[Register a global keyboard shortcut that, `callback` will called when the
`accelerator` is pressed.
]]
---@param accelerator Accelerator 
---@param callback function 
---@return integer 
function GlobalShortcut:register(accelerator, callback) end

--[[Unregister the shortcut with the `id` returned by `<!name>Register`.
]]
---@param id integer 
---@return nil 
function GlobalShortcut:unregister(id) end

--[[Unregister all shortcuts registered in this app.]]
---@return nil 
function GlobalShortcut:unregisterall() end

return GlobalShortcut
