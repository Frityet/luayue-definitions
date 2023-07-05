---@meta

--[[# RectF

### Rectangle type.

### Detail

### Details

This type defines a simple integer rectangle class. The containment semantics
are array-like; that is, the coordinate (x, y) is considered to be
contained by the rectangle, but the coordinate (x + width, y) is not.

This type is represented by a table with `x`, `y`, `width`, `height`
properties.

```lua
window:setbounds{x=11, y=24, width=100, height=100}
```

When a function accepts `RectF` as its last parameter, you can simply
unpack the properties:

```lua
window:setbounds(11, 24, 100, 100)
```
[API Documentation](https://libyue.com/docs/latest/lua/api/rectf.html#)
]]
---@class nu.RectF
---@field x number X coordinate.
---@field y number Y coordinate.
---@field width number Rectangle width.
---@field height number Rectangle height.
local RectF = {}
return RectF
