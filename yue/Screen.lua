---@meta

---Receive information about system’s monitor or screen.
---@class Screen
---@field onadddisplay fun(display: Display): nil Emitted when a new `display` is available.
---@field onremovedisplay fun(display: Display): nil Emitted when the `display` has been removed.
---@field onupdatedisplay fun(display: Display): nil Emitted when there are changes happened to `display`.
local Screen = {}
---Return the primary display.
---@return Display
function Screen:getprimarydisplay() end

---Return the list of displays that are currently available.
---@return table
function Screen:getalldisplays() end

---Return the display nearest the specified `window`.
---@param window Window
---@return Display
function Screen:getdisplaynearestwindow(window) end

---Return the display nearest the specified DIP `point`.
---@param point PointF
---@return Display
function Screen:getdisplaynearestpoint(point) end

---Return the current absolute position of the mouse pointer.
---@return PointF
function Screen:getcursorscreenpoint() end

return Screen
