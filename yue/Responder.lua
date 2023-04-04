---@meta

--[[
Base class of Window and View for event processing.
]]
---@class Responder
---@field onmousedown fun(self: Responder, event: MouseEvent): boolean Emitted when pressing mouse buttons.
---@field onmouseup fun(self: Responder, event: MouseEvent): boolean Emitted when releasing mouse buttons.
---@field onmousemove fun(self: Responder, event: MouseEvent): nil Emitted when user moves mouse in the responder.
---@field onmouseenter fun(self: Responder, event: MouseEvent): nil Emitted when mouse enters the responder.
---@field onmouseleave fun(self: Responder, event: MouseEvent): nil Emitted when mouse leaves the responder.
---@field onkeydown fun(self: Responder, event: KeyEvent): boolean Emitted when pressing keyboard.
---@field onkeyup fun(self: Responder, event: KeyEvent): boolean Emitted when releasing keyboard.
---@field oncapturelost fun(self: Responder): nil Emitted when the mouse capture on responder has been released.
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

return Responder
