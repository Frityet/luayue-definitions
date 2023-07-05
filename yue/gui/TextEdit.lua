---@meta

--[[# TextEdit

### Plain text input view.

### Detail

### Details

The selection range in `TextEdit` use 0-based index, the `start` and `end`
both start from 0, and `end` is the index of the character after the range.

Using -1 as `end` means the end of the text.

The range uses character index instead of byte index, be careful when using
programming languages without Unicode support.
[API Documentation](https://libyue.com/docs/latest/lua/api/textedit.html#)
]]
---@class nu.TextEdit : nu.View
---@field ontextchange (fun(self: nu.TextEdit): nil) | yue.gui.Signal Emitted when user has changed text.
---@field shouldinsertnewline (fun(self: nu.TextEdit): boolean) Called when user presses `Return` to insert new line, should return whether it is allowed. 
local TextEdit = {}
--[[## Create a new `TextEdit`.



]]
---@return nu.TextEdit 
function TextEdit.create() end

--[[## Change the text in the view.



]]
---@param text string 
---@return nil 
function TextEdit:settext(text) end

--[[## Return currently displayed text.



]]
---@return string 
function TextEdit:gettext() end

--[[## Undo the last edit operation in the undo queue.



]]
---@return nil 
function TextEdit:undo() end

--[[## Return whether there are any actions in undo queue.



]]
---@return nil 
function TextEdit:canundo() end

--[[## Redo the next action in the redo queue



]]
---@return nil 
function TextEdit:redo() end

--[[## Return whether there are any actions in redo queue.



]]
---@return nil 
function TextEdit:canredo() end

--[[## Delete (cut) the current selection, if any, copy the deleted text to the
clipboard.




]]
---@return nil 
function TextEdit:cut() end

--[[## Copy current selection to clipboard.



]]
---@return nil 
function TextEdit:copy() end

--[[## Copy the current content of the clipboard to current caret position.




]]
---@return nil 
function TextEdit:paste() end

--[[## Select all text.



]]
---@return nil 
function TextEdit:selectall() end

--[[## Return the start position and end position of current selection.

If nothing is selected, the cursor position will be returned as both values, ie. (0, 0).




]]
---@return nu.std.tuple 
function TextEdit:getselectionrange() end

--[[## Select text between `start` and `end` positions.



]]
---@param start integer 
---@param _end integer 
---@return nil 
function TextEdit:selectrange(start, _end) end

--[[## Return the text between `start` and `end` positions.



]]
---@param start integer 
---@param _end integer 
---@return string 
function TextEdit:gettextinrange(start, _end) end

--[[## Insert `text` at current caret position.



]]
---@param text string 
---@return nil 
function TextEdit:inserttext(text) end

--[[## Insert `text` at the `position`.



]]
---@param text string 
---@param position integer 
---@return nil 
function TextEdit:inserttextat(text, position) end

--[[## Delete text of current selection.



]]
---@return nil 
function TextEdit:delete() end

--[[## Delete text between `start` and `end` positions.



]]
---@param start integer 
---@param _end integer 
---@return nil 
function TextEdit:deleterange(start, _end) end

--[[## Set whether to use overlay scrolling.

| ❗ This method is only available on the following platforms: macOS, linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@param overlay boolean 
---@return nil 
function TextEdit:setoverlayscrollbar(overlay) end

--[[## Set the policy for displaying horizontal and vertical scrollbars.




]]
---@param hpolicy nu.Scroll.Policy 
---@param vpolicy nu.Scroll.Policy 
---@return nil 
function TextEdit:setscrollbarpolicy(hpolicy, vpolicy) end

--[[## Set horizontal and vertical scroll elasticity (bounce).


| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param helasticity nu.Scroll.Elasticity 
---@param velasticity nu.Scroll.Elasticity 
---@return nil 
function TextEdit:setscrollelasticity(helasticity, velasticity) end

--[[## Return the horizontal and vertical scroll elasticity.


| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return nu.std.tuple 
function TextEdit:getscrollelasticity() end

--[[## Return the text extend.



]]
---@return nu.RectF 
function TextEdit:gettextbounds() end

return TextEdit
