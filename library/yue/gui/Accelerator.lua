---@meta

--[[# Accelerator

### Keyboard shortcut.

### Details

Accelerators are represented by strings that contain multiple modifier and
key codes, combined by the `+` character.

Examples:
* `CmdOrCtrl+A`
* `Shift+Backspace`

## Platform-dependent modifiers

On Linux and Window, the `CommandOrControl` modifier is mapped to the
<kbd>Control</kbd> key. On macOS it is mapped to the `Command` key. This is
useful when defining some common keyboard shortcuts.

## Available modifiers

* `Control`, `Ctrl`
* `CommandOrControl`, `CmdOrCtrl`
* `Alt`, `Option`
* `Shift`
* `Meta`, `Command`, `Super`

## Available key codes

* `0` to `9`
* `A` to `Z`
* `F1` to `F24`
* Punctuations like `~`, `!`, `@`, `#`, `$`, etc.
* `Enter`, `Return`
* `Esc`, `Escape`
* `Up`, `Down`, `Left`, `Right`
* `Home`, `End`
* `PageDown`, `PageUp`
* `ArrowDown`, `ArrowLeft`, `ArrowRight`, `ArrowUp`
* `AudioVolumeDown`, `AudioVolumeMute`, `AudioVolumeUp`
* `BrowserBack`, `BrowserFavorites`, `BrowserForward`, `BrowserHome`,
  `BrowserRefresh`, `BrowserSearch`, `BrowserStop`
* `LaunchApplication1`, `LaunchApplication2`, `LaunchMail`,
  `LaunchMediaplayer`
* `MediaPlayPause`, `MediaStop`, `MediaTrackNext`, `MediaTrackPrevious`
* `HangulMode`, `HanjaMode`, `KanaMode`, `KanjiMode`
* `Add`
* `Backspace`
* `Cancel`
* `CapsLock`
* `Clear`
* `Contextmenu`
* `Decimal`
* `Delete`
* `Divide`
* `Execute`
* `Help`
* `Insert`
* `Multiply`
* `Numlock`
* `Pause`
* `Plus`
* `Print`
* `Scrolllock`
* `Select`
* `Snapshot`
* `Space`
* `Subtract`
* `Tab`

[API Documentation](https://libyue.com/docs/latest/lua/api/accelerator.html#)
]]
---@class nu.Accelerator
local Accelerator = {}
return Accelerator
