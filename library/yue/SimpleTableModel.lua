---@meta

--[[# A simple implementation of TableModel.

There is no need to call `Notify` methods when using `SimpleTableModel`.

Note that all data are stored as primary types, it is not possible to store
a native object (for example `Image`s) in table model.
]]
---@class SimpleTableModel : TableModel
local SimpleTableModel = {}
--[[Create a `SimpleTableModel` with fixed `columns` number.]]
---@param columns integer 
---@return SimpleTableModel 
function SimpleTableModel.create(columns) end

--[[Add a row.]]
---@param row table 
---@return nil 
function SimpleTableModel:addrow(row) end

--[[Remove the row at `index`.]]
---@param index integer 
---@return nil 
function SimpleTableModel:removerowat(index) end

return SimpleTableModel
