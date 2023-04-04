---@meta

--[[
Options for creating COM server.
]]
---@class NotificationCenter.COMServerOptions
---@field writeregistry boolean Whether to register COM server in registry automatically when any event of `NotificationCenter` is subscribed. Default is `true`. 
---@field arguments string The arguments to pass to the executable when system starts the app after a notification is activated. Default is empty string. 
---@field toastactivatorclsid string The `ToastActivatorCLSID`, which can be generated with `uuidgen.exe`. It must include a pair of curly braces. If not specified, one will be automatically generated from the app's `AppUserModelID`. 

NotificationCenter.COMServerOptions = {}
return NotificationCenter.COMServerOptions
