---@meta

---A simple implementation of TableModel.
---@class SimpleTableModel : TableModel
local SimpleTableModel = {}
---Add a row.
---@param row table
---@return nil
function SimpleTableModel:addrow(row) end

---Remove the row at `index`.
---@param index integer
---@return nil
function SimpleTableModel:removerowat(index) end

return SimpleTableModel
