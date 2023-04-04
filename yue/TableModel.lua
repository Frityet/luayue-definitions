---@meta

--[[
Base class for models of Table.

For simple use cases, the `<!type>SimpleTableModel` can be used.

For implementing a custom `TableModel`, please see
`<!type>AbstractTableModel`.

]]
---@class TableModel
local TableModel = {}
---Return how many rows are in the model.
---@return integer
function TableModel:getrowcount() end

---Return the data at `column` and `row`.
---@param column integer
---@param row integer
---@return any
function TableModel:getvalue(column, row) end

---Change the `value` at `column` and `row`.
---@param column integer
---@param row integer
---@param value any
---@return nil
function TableModel:setvalue(column, row, value) end

---Called by implementers to notify the table that a row is inserted. 
---@param row integer
---@return nil
function TableModel:notifyrowinsertion(row) end

---Called by implementers to notify the table that a row is removed. 
---@param row integer
---@return nil
function TableModel:notifyrowdeletion(row) end

---Called by implementers to notify the table that the value at `column` and `row` has been changed. 
---@param column integer
---@param row integer
---@return nil
function TableModel:notifyvaluechange(column, row) end

return TableModel
