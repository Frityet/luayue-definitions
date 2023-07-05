---@meta

--[[# FileOpenDialog

### Dialog used for opening files or folders.

### Detail

[API Documentation](https://libyue.com/docs/latest/lua/api/fileopendialog.html#)
]]
---@class nu.FileOpenDialog : nu.FileDialog
local FileOpenDialog = {}
--[[## Create an open dialog.



]]
---@return nu.FileOpenDialog
function FileOpenDialog.create() end

--[[## Return the chosen items in dialog.



]]
---@return table
function FileOpenDialog:getresults() end

return FileOpenDialog
