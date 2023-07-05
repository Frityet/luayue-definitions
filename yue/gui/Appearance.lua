---@meta

--[[# Appearance

### Information about user's appearance preferences.

### Detail

### Details


This class can not be created by user, you can only receive its global
instance from the `appearance` property of the module:

```lua
gui.appearance:isdarkscheme()
```
[API Documentation](https://libyue.com/docs/latest/lua/api/appearance.html#)
]]
---@class nu.Appearance
---@field oncolorschemechange (fun(): nil) | yue.gui.Signal Emitted when user has changed system color scheme preferences.
local Appearance = {}
--[[## Enable Windows 10 dark mode for current app.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
### Details

The dark mode of Windows 10 does not support Win32 apps officially and
this API makes use of private APIs to force enabling dark mode for current
app.

Note that this API can only enable dark mode for window titlebars, all
the views and colors are still using light color schemes. You should only
use this API when developing custom-drawn apps.


]]
---@param enable boolean 
---@return nil 
function Appearance:setdarkmodeenabled(enable) end

--[[## Return whether this app is using a dark color scheme.

### Details

Note that on Windows the dark mode does not support Win32 apps, and this
method will always return false unless dark mode is explicitly enabled
with `<!name>SetDarkModeEnabled`.


]]
---@return boolean 
function Appearance:isdarkscheme() end

return Appearance
