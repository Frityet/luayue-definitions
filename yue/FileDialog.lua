---@meta

---Base class for file dialogs.
---@class FileDialog
local FileDialog = {}
---Return the chosen item in dialog.
---@return string
function FileDialog:getresult() end

---Show the dialog and wait for result, return `true` if user has chosen item(s). 
---@return boolean
function FileDialog:run() end

---Show the dialog as a modal child of parent `window` and wait for result, return `true` if user has chosen item(s). 
---@param window Window
---@return boolean
function FileDialog:runforwindow(window) end

---Set the title of the dialog.
---@param title string
---@return nil
function FileDialog:settitle(title) end

---Set the text of accept button.
---@param label string
---@return nil
function FileDialog:setbuttonlabel(label) end

---Set the filename to show in the dialog.
---@param filename string
---@return nil
function FileDialog:setfilename(filename) end

---Set a `folder` that is always selected when the dialog is opened  On macOS file dialogs of sandboxed apps may silently ignore the folder selection, notwithstanding that the user may be able to subsequently navigate to the folder and the app successfully access files within the folder. The behavior depends on the app's entitlements and the particular folder specified. 
---@param folder string
---@return nil
function FileDialog:setfolder(folder) end

---A bit array of `options`.
---@param options integer
---@return nil
function FileDialog:setoptions(options) end

---Set the file types that the dialog can open or save.
---@param filters table
---@return nil
function FileDialog:setfilters(filters) end

return FileDialog
