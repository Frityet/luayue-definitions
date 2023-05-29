---@meta

--[[# Information about localization.

]]
---@class Locale
local Locale = {}
--[[Return current locale identifier string.]]
---@return string 
function Locale.getcurrentidentifier() end

--[[Return an ordered list of user's preferred languages.]]
---@return table 
function Locale.getpreferredlanguages() end

return Locale
