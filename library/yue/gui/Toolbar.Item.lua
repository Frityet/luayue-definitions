---@meta

--[[# Toolbar.Item

### Represent an item of `Toolbar`.

### Detail

[API Documentation](https://libyue.com/docs/latest/lua/api/toolbar.item.html#)
]]
---@class nu.Toolbar.Item
---@field label string Item's label.
---@field minsize nu.SizeF Item's minimum size.
---@field maxsize nu.SizeF Item's maximum size.
---@field image nu.Image Item's image.
---@field view nu.View Item's custom view.
---@field onclick function Function called when item is clicked.

Toolbar.Item = {}
return Toolbar.Item
