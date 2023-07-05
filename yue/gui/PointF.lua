---@meta

--[[# PointF

### A point with x and y coordinate.

### Detail

### Details


This type is represented by a table with `x` and `y` properties.

```lua
painter:moveto{x=11, y=24}
```

When a function accepts `PointF` as its last parameter, you can simply
unpack `x` and `y`:

```lua
painter:moveto(11, 24)
```
[API Documentation](https://libyue.com/docs/latest/lua/api/pointf.html#)
]]
---@class nu.PointF
---@field x number X coordinate.
---@field y number Y coordinate.
local PointF = {}
return PointF
