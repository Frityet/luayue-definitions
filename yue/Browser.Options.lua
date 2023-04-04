---@meta

--[[
Options for creating browser.
]]
---@class Browser.Options
---@field devtools boolean Whether the browser can show devtools, default is `false`.
---@field contextmenu boolean Whether to use builtin context menu, default is `false`.
---@field allowfileaccessfromfiles boolean Whether file access is allowed from file URLs, default is `false`.
---@field hardwareacceleration boolean Whether to enable hardware acceleration, default is `true`.
---@field webview2support boolean Whether to use WebView2 as backend, default is `false`.

Browser.Options = {}
return Browser.Options
