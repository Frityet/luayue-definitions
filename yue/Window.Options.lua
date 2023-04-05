---@meta

--[[### Options for creating window.

]]
---@class Window.Options
---@field frame boolean Whether window has native frame, default is `true`. 
---@field transparent boolean Whether window is transparent, default is `false`.  Only frameless window can be transparent, the behavior of making a normal window transparent is undefined. 
---@field showtrafficlights boolean Whether to show window buttons for frameless window, default is `false`.  This property is ignored for normal windows. 

Window.Options = {}
return Window.Options
