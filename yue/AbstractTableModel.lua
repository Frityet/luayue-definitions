---@meta

---Implement a custom TableModel.
---@class AbstractTableModel : TableModel
---@field getrowcount fun(self: AbstractTableModel): integer Return how many rows are in the model.
---@field getvalue fun(self: AbstractTableModel, column: integer, row: integer): any Return the data at `column` and `row`.
---@field setvalue fun(self: AbstractTableModel, column: integer, row: integer, value: any): nil Change the `value` at `column` and `row`.
local AbstractTableModel = {}
return AbstractTableModel
