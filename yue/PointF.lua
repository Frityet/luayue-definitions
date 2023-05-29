---@meta

--[[# A point with x and y coordinate.


This type is represented by a table with `x` and `y` properties.

```lua
painter:moveto{x=11, y=24}
```

When a function accepts `PointF` as its last parameter, you can simply
unpack `x` and `y`:

```lua
painter:moveto(11, 24)
```
]]
---@class PointF
---@field x number X coordinate.
---@field y number Y coordinate.
local PointF = {}
return PointF
