---@meta

--[[# Color

### 32-bit Color with alpha channel.

### Details


`Color` is represented by a 32-bit ARGB integer.

For APIs that accept `Color`, you can also pass a hex string representing
the color, like `"#A123"`, `"#123"`, `"#AA112233"`, `"#112233"`.

```lua
label:setcolor('#F000')
```

[API Documentation](https://libyue.com/docs/latest/lua/api/color.html#)
]]
---@class nu.Color : string
local Color = {}
--[[## Return the color with theme `name`.



]]
---@param name nu.Color.Name 
---@return nu.Color 
function Color.get(name) end

--[[## Create an opaque RGB color.



]]
---@param r integer 
---@param g integer 
---@param b integer 
---@return nu.Color 
function Color.rgb(r, g, b) end

--[[## Create an ARGB color.



]]
---@param a integer 
---@param r integer 
---@param g integer 
---@param b integer 
---@return nu.Color 
function Color.argb(a, r, g, b) end

return Color
