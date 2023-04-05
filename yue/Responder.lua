---@meta

--[[]]
---Base class of Window and View for event processing.
---@class Responder 
---@field onmousedown fun(self: Responder, event: MouseEvent): boolean 
---@field onmouseup fun(self: Responder, event: MouseEvent): boolean 
---@field onmousemove fun(self: Responder, event: MouseEvent) 
---@field onmouseenter fun(self: Responder, event: MouseEvent) 
---@field onmouseleave fun(self: Responder, event: MouseEvent) 
---@field onkeydown fun(self: Responder, event: KeyEvent): boolean 
---@field onkeyup fun(self: Responder, event: KeyEvent): boolean 
---@field oncapturelost fun(self: Responder) 
local Responder = {}
--[[Set mouse capture to the responder.]]
---@return nil 
function Responder:setcapture() end

--[[Release mouse capture if the responder has mouse capture.]]
---@return nil 
function Responder:releasecapture() end

--[[Return whether the responder has mouse capture.]]
---@return boolean 
function Responder:hascapture() end

return Responder
