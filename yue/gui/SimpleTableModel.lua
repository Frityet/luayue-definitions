---@meta

--[[# SimpleTableModel

### A simple implementation of TableModel.

### Detail

### Details

There is no need to call `Notify` methods when using `SimpleTableModel`.

Note that all data are stored as primary types, it is not possible to store
a native object (for example `Image`s) in table model.
[API Documentation](https://libyue.com/docs/latest/lua/api/simpletablemodel.html#)
]]
---@class nu.SimpleTableModel : nu.TableModel
local SimpleTableModel = {}
--[[## Create a `SimpleTableModel` with fixed `columns` number.



]]
---@param columns integer 
---@return nu.SimpleTableModel 
function SimpleTableModel.create(columns) end

--[[## Add a row.

### Details

The length of `row` should not be smaller than columns number.

]]
---@param row table 
---@return nil 
function SimpleTableModel:addrow(row) end

--[[## Remove the row at `index`.



]]
---@param index integer 
---@return nil 
function SimpleTableModel:removerowat(index) end

return SimpleTableModel
