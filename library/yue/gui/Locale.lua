---@meta

--[[# Locale

### Information about localization.


[API Documentation](https://libyue.com/docs/latest/lua/api/locale.html#)
]]
---@class nu.Locale
local Locale = {}
--[[## Return current locale identifier string.



]]
---@return string
function Locale.getcurrentidentifier() end

--[[## Return an ordered list of user's preferred languages.

#### Details

Users choose a primary language when configuring a device, they may also
specify one or more secondary languages in order of preference for use
when localization is unavailable in a higher priority language.

Use this API to obtain the current user's ordered list of languages,
presented as an array of locale identifier strings.


]]
---@return table
function Locale.getpreferredlanguages() end

return Locale
