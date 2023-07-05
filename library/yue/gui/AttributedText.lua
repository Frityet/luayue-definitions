---@meta

--[[# AttributedText

### Text with styles.

#### Details

On Windows, due to the limitations of GdiPlus, it is only supported to change
the whole text's color and font, i.e. the `SetFontFor` and `SetColorFor` APIs
are unsupported.

[API Documentation](https://libyue.com/docs/latest/lua/api/attributedtext.html#)
]]
---@class nu.AttributedText
local AttributedText = {}
--[[## Create an `AttributedText`.



]]
---@param text string
---@param attributes nu.TextAttributes
---@return nu.AttributedText
function AttributedText.create(text, attributes) end

--[[## Overwrite styles with `format`.



]]
---@param format nu.TextFormat
---@return nil
function AttributedText:setformat(format) end

--[[## Return current styles.



]]
---@return nu.TextFormat
function AttributedText:getformat() end

--[[## Set the whole text's `font`.



]]
---@param font nu.Font
---@return nil
function AttributedText:setfont(font) end

--[[## Set the `font` of text between character range `[start, end)`. Passing
`-1` as `end` means the rest of the text.


| ❗ This method is only available on the following platforms: macOS, Linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@param font nu.Font
---@param start integer
---@param _end integer
---@return nil
function AttributedText:setfontfor(font, start, _end) end

--[[## Set the whole text's `color`.



]]
---@param color nu.Color
---@return nil
function AttributedText:setcolor(color) end

--[[## Set the `color` of text between character range `[start, end)`. Passing
`-1` as `end` means the rest of the text.


| ❗ This method is only available on the following platforms: macOS, Linux ❗ |
|-------------------------------------------------------------------------------|


]]
---@param font nu.Color
---@param start integer
---@param _end integer
---@return nil
function AttributedText:setcolorfor(font, start, _end) end

--[[## Reset font and color to system default.



]]
---@return nil
function AttributedText:clear() end

--[[## Return the bounds required to draw the text within `size`.



]]
---@param size nu.SizeF
---@return nu.RectF
function AttributedText:getboundsfor(size) end

--[[## Change the text content.



]]
---@param text string
---@return nil
function AttributedText:settext(text) end

--[[## Return the plain text.



]]
---@return string
function AttributedText:gettext() end

return AttributedText
