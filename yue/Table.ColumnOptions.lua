---@meta

--[[### Options for columns of Table.

]]
---@class Table.ColumnOptions
---@field type Table::ColumnType The `type` of column, which decides how table cells are rendered.
---@field ondraw function If the `type` is `Custom`, this function will be used for renderering table cells under the column. 
---@field column integer Which `column` of table model to show.
---@field width integer Initial width of column.

Table.ColumnOptions = {}
return Table.ColumnOptions
