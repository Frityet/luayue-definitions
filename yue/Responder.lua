---@meta

---Base class of Window and View for event processing.
---@class Responder
local Responder = {}
---Set mouse capture to the responder.
---@return nil
function Responder.setcapture() end

---Release mouse capture if the responder has mouse capture.
---@return nil
function Responder.releasecapture() end

---Return whether the responder has mouse capture.
---@return boolean
function Responder.hascapture() end

return Responder
