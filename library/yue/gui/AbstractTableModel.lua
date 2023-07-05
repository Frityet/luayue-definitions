---@meta

--[[# AbstractTableModel

### Implement a custom TableModel.

### Detail

### Details

To implement a custom `<!type>TableModel`, please implement all the methods
in the Delegates section. It is also required to call the `Notify` methods of
`<!type>TableModel` super class when data has been changed, so the
`<!type>Table` can correctly update.

For simple use cases, the `<!type>SimpleTableModel` can be used.
[API Documentation](https://libyue.com/docs/latest/lua/api/abstracttablemodel.html#)
]]
---@class nu.AbstractTableModel : nu.TableModel
---@field getrowcount (fun(self: nu.AbstractTableModel): integer) Return how many rows are in the model.
---@field getvalue (fun(self: nu.AbstractTableModel, column: integer, row: integer): any) Return the data at `column` and `row`.
---@field setvalue (fun(self: nu.AbstractTableModel, column: integer, row: integer, value: any): nil) Change the `value` at `column` and `row`.
local AbstractTableModel = {}
return AbstractTableModel
