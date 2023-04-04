---@meta

--[[
Table view.
The `Table` does not store any data itself, to display data in `Table`, users
have to provide a `<!type>TableModel`.

How data are renderered depends on the type of column. It is also possible to
create a custom renderer for arbitrary data.

]]
---@class Table : View
local Table = {}
---Create a new `Table`.
---@return Table
function Table.create() end

---Set `model` as table's data source.
---@param model TableModel
---@return nil
function Table:setmodel(model) end

---Return table's model.
---@return TableModel
function Table:getmodel() end

---Add a new column with `title`, which shows readonly text.
---@param title string
---@return nil
function Table:addcolumn(title) end

---Add a new column with `title` and `options`.
---@param title string
---@param options Table.ColumnOptions
---@return nil
function Table:addcolumnwithoptions(title, options) end

---Return the number of columns.
---@return integer
function Table:getcolumncount() end

---Set whether the columns header is visible.
---@param visible boolean
---@return nil
function Table:setcolumnsvisible(visible) end

---Return whether the columns header is visible.
---@return boolean
function Table:iscolumnsvisible() end

---Set the `height` of each row.
---@param height number
---@return nil
function Table:setrowheight(height) end

---Return the `height` of each row.
---@return number
function Table:getrowheight() end

---Set whether it is allowed to select more than one row at a time. 
---@param enable boolean
---@return nil
function Table:enablemultipleselection(enable) end

---Return whether it is allowed to select more than one row at a time. 
---@return boolean
function Table:ismultipleselectionenabled() end

---Select a `row`.
---@param row integer
---@return nil
function Table:selectrow(row) end

---Return the index of selected row.
---@return integer
function Table:getselectedrow() end

---Select multiple `rows`.
---@param rows table
---@return nil
function Table:selectrows(rows) end

---Return selected rows' indexes.
---@return table
function Table:getselectedrows() end

return Table
