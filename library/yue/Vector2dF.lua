---@meta

--[[# Two dimensions vector.


This is represented by a table with `x` and `y` properties, indicating a
distance in two dimensions between two points.

```lua
print(view:offsetfromwindow())
-- { x=100, y=100 }
```
]]
---@class Vector2dF
---@field x number X component.
---@field y number Y component.
local Vector2dF = {}
return Vector2dF
