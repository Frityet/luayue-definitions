---@meta

--[[# Table

### Table view.

### Detail

### Details

The `Table` does not store any data itself, to display data in `Table`, users
have to provide a `<!type>TableModel`.

How data are renderered depends on the type of column. It is also possible to
create a custom renderer for arbitrary data.
[API Documentation](https://libyue.com/docs/latest/lua/api/table.html#)
]]
---@class nu.Table : nu.View
---@field onselectionchange (fun(self: nu.Table): nil) | yue.gui.Signal Emitted when the table's selection has changed.
---@field onrowactivate (fun(self: nu.Table, row: integer): nil) | yue.gui.Signal Emitted when the user double-clicks a row.
---@field ontogglecheckbox (fun(self: nu.Table, column: integer, row: integer): nil) | yue.gui.Signal Emitted when the user clicks a cell to toggle checkbox.
local Table = {}
--[[## Create a new `Table`.



]]
---@return nu.Table 
function Table.create() end

--[[## Set `model` as table's data source.



]]
---@param model nu.TableModel 
---@return nil 
function Table:setmodel(model) end

--[[## Return table's model.



]]
---@return nu.TableModel 
function Table:getmodel() end

--[[## Add a new column with `title`, which shows readonly text.



]]
---@param title string 
---@return nil 
function Table:addcolumn(title) end

--[[## Add a new column with `title` and `options`.



]]
---@param title string 
---@param options nu.Table.ColumnOptions 
---@return nil 
function Table:addcolumnwithoptions(title, options) end

--[[## Return the number of columns.



]]
---@return integer 
function Table:getcolumncount() end

--[[## Set whether the columns header is visible.

### Details

On macOS adding column after hiding the header will result in missing
columns in the header even after making the header visible again.

It is recommended to never show the header again after hiding the header,
for consistent behaviors between platforms.


]]
---@param visible boolean 
---@return nil 
function Table:setcolumnsvisible(visible) end

--[[## Return whether the columns header is visible.



]]
---@return boolean 
function Table:iscolumnsvisible() end

--[[## Set the `height` of each row.

### Details

It is not recommended to change row height unless you are drawing all
cells yourself, as the default text cells may not show decently under
large or small height.

On Linux, due to platform implementations, this method has to be called
before adding columns. It does not have any effect when columns have
already been added.


]]
---@param height number 
---@return nil 
function Table:setrowheight(height) end

--[[## Return the `height` of each row.



]]
---@return number 
function Table:getrowheight() end

--[[## Set whether the view has border.



]]
---@param has boolean 
---@return nil 
function Table:sethasborder(has) end

--[[## Return whether the view has border.



]]
---@return boolean 
function Table:hasborder() end

--[[## Set whether it is allowed to select more than one row at a time.




]]
---@param enable boolean 
---@return nil 
function Table:enablemultipleselection(enable) end

--[[## Return whether it is allowed to select more than one row at a time.




]]
---@return boolean 
function Table:ismultipleselectionenabled() end

--[[## Select a `row`.



]]
---@param row integer 
---@return nil 
function Table:selectrow(row) end

--[[## Return the index of selected row.

### Details

For table that allows multiple selections, this will return the index of
first selected row. When no row is selected, `-1` will be returned.


]]
---@return integer 
function Table:getselectedrow() end

--[[## Select multiple `rows`.



]]
---@param rows table 
---@return nil 
function Table:selectrows(rows) end

--[[## Return selected rows' indexes.



]]
---@return table 
function Table:getselectedrows() end

return Table
