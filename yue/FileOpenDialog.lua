---@meta

--[[### Dialog used for opening files or folders.

]]
---@class FileOpenDialog : FileDialog
local FileOpenDialog = {}
--[[Create an open dialog.]]
---@return FileOpenDialog 
function FileOpenDialog.create() end

--[[Return the chosen items in dialog.]]
---@return table 
function FileOpenDialog:getresults() end

return FileOpenDialog
