---@meta

---Base class of Window and View for event processing.
---@class Responder
local Responder = {}
---Set mouse capture to the responder.
---@return nil
function Responder:setcapture() end

---Release mouse capture if the responder has mouse capture.
---@return nil
function Responder:releasecapture() end

---Return whether the responder has mouse capture.
---@return boolean
function Responder:hascapture() end

---Emitted when pressing mouse buttons.
---@param self Responder, event MouseEvent
---@return boolean
function Responder:onmousedown(self, event) end

---Emitted when releasing mouse buttons.
---@param self Responder, event MouseEvent
---@return boolean
function Responder:onmouseup(self, event) end

---Emitted when user moves mouse in the responder.
---@param self Responder, event MouseEvent
---@return nil
function Responder:onmousemove(self, event) end

---Emitted when mouse enters the responder.
---@param self Responder, event MouseEvent
---@return nil
function Responder:onmouseenter(self, event) end

---Emitted when mouse leaves the responder.
---@param self Responder, event MouseEvent
---@return nil
function Responder:onmouseleave(self, event) end

---Emitted when pressing keyboard.
---@param self Responder, event KeyEvent
---@return boolean
function Responder:onkeydown(self, event) end

---Emitted when releasing keyboard.
---@param self Responder, event KeyEvent
---@return boolean
function Responder:onkeyup(self, event) end

---Emitted when the mouse capture on responder has been released.
---@param self Responder
---@return nil
function Responder:oncapturelost(self) end

return Responder
