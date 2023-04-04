---@meta

---Window toolbar.
---@class Toolbar
local Toolbar = {}
---Create a new `Toolbar` view with `identifier`.  Within the application all toolbars with the same identifier are synchronized to maintain the same state, including for example, the display mode and item order. The identifier is used as the autosave name for toolbars that save their configuration. 
---@param identifier string
---@return Toolbar
function Toolbar.create(identifier) end

---Set the identifiers of default items that would show in toolbar. 
---@param identifiers table
---@return nil
function Toolbar:setdefaultitemidentifiers(identifiers) end

---Set the identifiers of the items that are allowed to show in toolbar. 
---@param identifiers table
---@return nil
function Toolbar:setalloweditemidentifiers(identifiers) end

---Set whether users are allowed to customize the toolbar. 
---@param allow boolean
---@return nil
function Toolbar:setallowcustomization(allow) end

---Set the display mode of the toolbar items.
---@param mode Toolbar::DisplayMode
---@return nil
function Toolbar:setdisplaymode(mode) end

---Set whether toolbar is visible.
---@param visible boolean
---@return nil
function Toolbar:setvisible(visible) end

---Return whether toolbar is visible.
---@return boolean
function Toolbar:isvisible() end

---Return the identifier of the toolbar.
---@return string
function Toolbar:getidentifier() end

---Called lazily when the toolbar is going to get the item with `identifier`.  You should not cache the item to be returned. 
---@param toolbar Toolbar, identifier string
---@return Toolbar::Item
function Toolbar:getitem(toolbar, identifier) end

return Toolbar
