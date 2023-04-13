---@meta

--[[# Codes of keyboard keys.


Keyboard keys are represented with strings, in Yue we use the values of
HTML5 DOM's `KeyboardEvent.key` to represent the keys. A list of available
keys can be found at:
[Key Values - MDN](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/key/Key_Values).

There is an exception that the <kbd>Space Bar</kbd> is represented as
`"Space"` in Yue instead of `" "`.
]]
---@class KeyboardCode
local KeyboardCode = {}
return KeyboardCode
