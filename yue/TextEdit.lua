---@meta

---Plain text input view.
---@class TextEdit : View
---@field ontextchange fun(self: TextEdit): nil Emitted when user has changed text.
local TextEdit = {}
---Create a new `TextEdit`.
---@return TextEdit
function TextEdit.create() end

---Change the text in the view.
---@param text string
---@return nil
function TextEdit:settext(text) end

---Return currently displayed text.
---@return string
function TextEdit:gettext() end

---Undo the last edit operation in the undo queue.
---@return nil
function TextEdit:undo() end

---Return whether there are any actions in undo queue.
---@return nil
function TextEdit:canundo() end

---Redo the next action in the redo queue
---@return nil
function TextEdit:redo() end

---Return whether there are any actions in redo queue.
---@return nil
function TextEdit:canredo() end

---Delete (cut) the current selection, if any, copy the deleted text to the clipboard. 
---@return nil
function TextEdit:cut() end

---Copy current selection to clipboard.
---@return nil
function TextEdit:copy() end

---Copy the current content of the clipboard to current caret position. 
---@return nil
function TextEdit:paste() end

---Select all text.
---@return nil
function TextEdit:selectall() end

---Return the start position and end position of current selection.  If nothing is selected, the cursor position will be returned as both values, ie. (0, 0). 
---@return std::tuple
function TextEdit:getselectionrange() end

---Select text between `start` and `end` positions.
---@param start integer, end integer
---@return nil
function TextEdit:selectrange(start, end) end

---Return the text between `start` and `end` positions.
---@param start integer, end integer
---@return string
function TextEdit:gettextinrange(start, end) end

---Insert `text` at current caret position.
---@param text string
---@return nil
function TextEdit:inserttext(text) end

---Insert `text` at the `position`.
---@param text string, position integer
---@return nil
function TextEdit:inserttextat(text, position) end

---Delete text of current selection.
---@return nil
function TextEdit:delete() end

---Delete text between `start` and `end` positions.
---@param start integer, end integer
---@return nil
function TextEdit:deleterange(start, end) end

---Set whether to use overlay scrolling.
---@param overlay boolean
---@return nil
function TextEdit:setoverlayscrollbar(overlay) end

---Set the policy for displaying horizontal and vertical scrollbars. 
---@param hpolicy Scroll::Policy, vpolicy Scroll::Policy
---@return nil
function TextEdit:setscrollbarpolicy(hpolicy, vpolicy) end

---Set horizontal and vertical scroll elasticity (bounce). 
---@param helasticity Scroll::Elasticity, velasticity Scroll::Elasticity
---@return nil
function TextEdit:setscrollelasticity(helasticity, velasticity) end

---Return the horizontal and vertical scroll elasticity. 
---@return std::tuple
function TextEdit:getscrollelasticity() end

---Return the text extend.
---@return RectF
function TextEdit:gettextbounds() end

---Called when user presses `Return` to insert new line, should return whether it is allowed. 
---@param self TextEdit
---@return boolean
function TextEdit:shouldinsertnewline(self) end

return TextEdit
