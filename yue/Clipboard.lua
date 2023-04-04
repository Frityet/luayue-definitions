---@meta

---Native clipboard.
---@class Clipboard
local Clipboard = {}
---Return the default copy-paste clipboard.
---@return Clipboard
function Clipboard.get() end

---Return the clipboard with `type`.
---@param type Clipboard::Type
---@return Clipboard
function Clipboard.fromtype(type) end

---Clear the clipboard.
---@return nil
function Clipboard:clear() end

---Set `text` as clipboard's content.
---@param text string
---@return nil
function Clipboard:settext(text) end

---Return the content of clipboard as text.
---@return string
function Clipboard:gettext() end

---Return whether the data of `type` is available.
---@param type Clipboard::Data::Type
---@return boolean
function Clipboard:isdataavailable(type) end

---Get the data of `type` from clipboard.
---@param type Clipboard::Data::Type
---@return Clipboard::Data
function Clipboard:getdata(type) end

---Set clipboard's content.
---@param objects table
---@return nil
function Clipboard:setdata(objects) end

---Start watching clipboard's content.
---@return nil
function Clipboard:startwatching() end

---Stop watching clipboard's content.
---@return nil
function Clipboard:stopwatching() end

return Clipboard
