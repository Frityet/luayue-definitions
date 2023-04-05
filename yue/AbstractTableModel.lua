---@meta

--[[To implement a custom `<!type>TableModel`, please implement all the methods
in the Delegates section. It is also required to call the `Notify` methods of
`<!type>TableModel` super class when data has been changed, so the
`<!type>Table` can correctly update.

For simple use cases, the `<!type>SimpleTableModel` can be used.
]]
---Implement a custom TableModel.
---@class AbstractTableModel : TableModel
---@field getrowcount fun(self: AbstractTableModel): integer 
---@field getvalue fun(self: AbstractTableModel, column: integer, row: integer): any 
---@field setvalue fun(self: AbstractTableModel, column: integer, row: integer, value: any) 
local AbstractTableModel = {}
return AbstractTableModel
