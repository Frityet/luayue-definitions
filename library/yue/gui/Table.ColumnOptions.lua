---@meta

--[[# Table.ColumnOptions

### Options for columns of Table.

### Detail

[API Documentation](https://libyue.com/docs/latest/lua/api/table.columnoptions.html#)
]]
---@class nu.Table.ColumnOptions
---@field type nu.Table.ColumnType The `type` of column, which decides how table cells are rendered.
---@field ondraw function If the `type` is `Custom`, this function will be used for renderering table cells under the column.
---@field column integer Which `column` of table model to show.
---@field width integer Initial width of column.

Table.ColumnOptions = {}
return Table.ColumnOptions
