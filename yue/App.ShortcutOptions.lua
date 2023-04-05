---@meta

--[[### Options for creating start menu shortcut.

]]
---@class App.ShortcutOptions
---@field arguments string The arguments passed to the executable, default is empty string.
---@field description string The description of the shortcut, default is the executable's description.
---@field workingdir string The working directory that the executable will run under.

App.ShortcutOptions = {}
return App.ShortcutOptions
