---@meta

--[[# SizeF

### Size type.

### Detail

### Details


This type is represented by a table with `width` and `height` properties.

```lua
window:setcontentsize{width=100, height=100}
```

When a function accepts `SizeF` as its last parameter, you can simply
unpack `width` and `height`:

```lua
window:setcontentsize(100, 100)
```
[API Documentation](https://libyue.com/docs/latest/lua/api/sizef.html#)
]]
---@class nu.SizeF
---@field width number Size width.
---@field height number Size height.
local SizeF = {}
return SizeF
