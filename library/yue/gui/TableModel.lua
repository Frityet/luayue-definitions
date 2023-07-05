---@meta

--[[# TableModel

### Base class for models of Table.

#### Details


For simple use cases, the `<!type>SimpleTableModel` can be used.

For implementing a custom `TableModel`, please see
`<!type>AbstractTableModel`.

[API Documentation](https://libyue.com/docs/latest/lua/api/tablemodel.html#)
]]
---@class nu.TableModel
local TableModel = {}
--[[## Return how many rows are in the model.



]]
---@return integer 
function TableModel:getrowcount() end

--[[## Return the data at `column` and `row`.

#### Details

Note that the returned value will be stored as primary types, native
objects (for example `Image`s) can not be passed to renderer.


]]
---@param column integer 
---@param row integer 
---@return any 
function TableModel:getvalue(column, row) end

--[[## Change the `value` at `column` and `row`.

#### Details


Note that the value will be stored as primary types, native objects (for
example `Image`s) can not be saved.


]]
---@param column integer 
---@param row integer 
---@param value any 
---@return nil 
function TableModel:setvalue(column, row, value) end

--[[## Called by implementers to notify the table that a row is inserted.




]]
---@param row integer 
---@return nil 
function TableModel:notifyrowinsertion(row) end

--[[## Called by implementers to notify the table that a row is removed.




]]
---@param row integer 
---@return nil 
function TableModel:notifyrowdeletion(row) end

--[[## Called by implementers to notify the table that the value at `column` and
`row` has been changed.




]]
---@param column integer 
---@param row integer 
---@return nil 
function TableModel:notifyvaluechange(column, row) end

return TableModel
