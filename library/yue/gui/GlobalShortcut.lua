---@meta

--[[# GlobalShortcut

### Register global keyboard shortcuts.

#### Details


This class can not be created by user, you can only receive its global
instance from the `globalshortcut` property of the module:

```lua
gui.globalshortcut:unregisterall()
```

[API Documentation](https://libyue.com/docs/latest/lua/api/globalshortcut.html#)
]]
---@class nu.GlobalShortcut
local GlobalShortcut = {}
--[[## Register a global keyboard shortcut that, `callback` will called when the
`accelerator` is pressed.


#### Details

An unsigned ID will returned on success, which can be used to undo the
registration. -1 will be returned on error.

This API will fail silently when the accelerator is already taken by other
apps, there is no way to know if an accelerator has already been
registered by other apps.


]]
---@param accelerator nu.Accelerator 
---@param callback function 
---@return integer 
function GlobalShortcut:register(accelerator, callback) end

--[[## Unregister the shortcut with the `id` returned by `<!name>Register`.




]]
---@param id integer 
---@return nil 
function GlobalShortcut:unregister(id) end

--[[## Unregister all shortcuts registered in this app.



]]
---@return nil 
function GlobalShortcut:unregisterall() end

return GlobalShortcut
