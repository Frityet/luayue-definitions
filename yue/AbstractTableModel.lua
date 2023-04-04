---@meta

---Implement a custom TableModel.
---@class AbstractTableModel : TableModel
local AbstractTableModel = {}
---Return how many rows are in the model.
---@param self AbstractTableModel
---@return integer
function AbstractTableModel:getrowcount(self) end

---Return the data at `column` and `row`.
---@param self AbstractTableModel
---@param column integer
---@param row integer
---@return any
function AbstractTableModel:getvalue(self, column, row) end

---Change the `value` at `column` and `row`.
---@param self AbstractTableModel
---@param column integer
---@param row integer
---@param value any
---@return nil
function AbstractTableModel:setvalue(self, column, row, value) end

return AbstractTableModel
