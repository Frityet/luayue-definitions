---@meta

---Native button, can also be used as checkbox and radio button.
---@class Button : View
local Button = {}
---Create a normal button with `title`.
---@param title string
---@return Button
function Button.create(title) end

---Create a button by reading `options`.
---@param options table
---@return Button
function Button.create(options) end

---Mark this button as default button.
---@return nil
function Button:makedefault() end

---Set button title.
---@param title string
---@return nil
function Button:settitle(title) end

---Return the button title.
---@return string
function Button:gettitle() end

---Set `checked` state of checkbox or radio.
---@param checked boolean
---@return nil
function Button:setchecked(checked) end

---Return whether checkbox or radio is checked.
---@return boolean
function Button:ischecked() end

---Set the image of button.
---@param image Image
---@return nil
function Button:setimage(image) end

---Return the image of button.
---@return Image
function Button:getimage() end

---Set the visual style of the button.
---@param style Button::Style
---@return nil
function Button:setbuttonstyle(style) end

---Set whether the button has a border.
---@param yes boolean
---@return nil
function Button:sethasborder(yes) end

---Return whether the button has a border.
---@return boolean
function Button:hasborder() end

---Emitted when button is clicked.
---@param self Button
---@return nil
function Button:onclick(self) end

return Button
