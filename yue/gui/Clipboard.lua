---@meta

--[[# Clipboard

### Native clipboard.

### Details

The `Clipboard` class can not be created by user, its instance can only be
recevied by using the factory methods.



```lua
-- Get the default copy-paste clipboard.
local clipboard = gui.Clipboard.get()

-- Changing the content of clipboard with multiple formats of data.
clipboard:setdata{
  {type='text', value='some text'},
  {type='html', value='<strong>some text</strong>'},
  {type='image', value=gui.Image.createfrompath('...')},
  {type='file-paths', value={'/some/path'}},
}

-- Read data.
local data = clipboard:getdata('text')
if data.type == 'text' then
  print(data.value)
end
```



[API Documentation](https://libyue.com/docs/latest/lua/api/clipboard.html#)
]]
---@class nu.Clipboard
---@field onchange (fun(self: nu.Clipboard): nil) | nu.Signal Emitted when clipboard's content has been changed.
local Clipboard = {}
--[[## Return the default copy-paste clipboard.



]]
---@return nu.Clipboard 
function Clipboard.get() end

--[[## Return the clipboard with `type`.



]]
---@param type nu.Clipboard.Type 
---@return nu.Clipboard 
function Clipboard.fromtype(type) end

--[[## Clear the clipboard.



]]
---@return nil 
function Clipboard:clear() end

--[[## Set `text` as clipboard's content.



]]
---@param text string 
---@return nil 
function Clipboard:settext(text) end

--[[## Return the content of clipboard as text.



]]
---@return string 
function Clipboard:gettext() end

--[[## Return whether the data of `type` is available.



]]
---@param type nu.Clipboard.Data.Type 
---@return boolean 
function Clipboard:isdataavailable(type) end

--[[## Get the data of `type` from clipboard.

### Details

You should always check the type of returned data before using it.

]]
---@param type nu.Clipboard.Data.Type 
---@return nu.Clipboard.Data 
function Clipboard:getdata(type) end

--[[## Set clipboard's content.



]]
---@param objects table 
---@return nil 
function Clipboard:setdata(objects) end

--[[## Start watching clipboard's content.

### Details

The `<!name>on_change` event will be emitted when clipboard's content has
been changed.

On macOS, due to lack of system notifications for clipboard events, this
event is implemented by polling every 500ms.


]]
---@return nil 
function Clipboard:startwatching() end

--[[## Stop watching clipboard's content.



]]
---@return nil 
function Clipboard:stopwatching() end

return Clipboard
