---@meta

---A window showing some text and buttons.
---@class MessageBox
---@field onresponse fun(self: MessageBox, response: integer): nil Emitted when the message box is closed.
local MessageBox = {}
---Create a message box.
---@return MessageBox
function MessageBox.create() end

---Show the message box and wait for result. Response ID will be returned. 
---@return integer
function MessageBox:run() end

---Show the message box as a child for `window` and wait for result. Response ID will be returned. 
---@param window Window
---@return integer
function MessageBox:runforwindow(window) end

---Show the message box. The `<!name>on_response` event will be emitted when the message box is closed. 
---@return nil
function MessageBox:show() end

---Show the message box as a child of `window`. The `<!name>on_response` event will be emitted when the message box is closed. 
---@param window Window
---@return nil
function MessageBox:showforwindow(window) end

---Close the message box. The cancel response ID will be used as result. 
---@return nil
function MessageBox:close() end

---Set the `type` of message box, system will show the corresponding icon in the message box. 
---@param type MessageBox.Type
---@return nil
function MessageBox:settype(type) end

---Set the message box window's title.
---@param title string
---@return nil
function MessageBox:settitle(title) end

---Add a button with `title`. The `response` ID will be used as result when the button is clicked. 
---@param title string
---@param response integer
---@return nil
function MessageBox:addbutton(title, response) end

---Set the default `response` ID, when user presses the <kbd>Enter</kbd> key the button associated with the ID will be clicked. 
---@param response integer
---@return nil
function MessageBox:setdefaultresponse(response) end

---Set the cancel `response` ID that will be used as result  when user presses the <kbd>Esc</kbd> key or when the window is closed without clicking any button. 
---@param response integer
---@return nil
function MessageBox:setcancelresponse(response) end

---Set the message box's message text.
---@param text string
---@return nil
function MessageBox:settext(text) end

---Set informative text that will show bellow the message text.
---@param text string
---@return nil
function MessageBox:setinformativetext(text) end

---Set the accessory `view` that will be placed between the text and the buttons. The `view` must be given a size before being used as accessory view. 
---@param view View
---@return nil
function MessageBox:setaccessoryview(view) end

---Return the accessory view.
---@return View
function MessageBox:getaccessoryview() end

---Set the custom icon displayed in the message box.
---@param image Image
---@return nil
function MessageBox:setimage(image) end

---Return the custom icon.
---@return Image
function MessageBox:getimage() end

return MessageBox
