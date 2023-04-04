---@meta

---Native webview using system browser.
---@class Browser : View
local Browser = {}
---Create a new browser view.
---@param options Browser::Options
---@return Browser
function Browser.create(options) end

---Register a custom protocol with `scheme` and `handler`.
---@param scheme string, handler function
---@return boolean
function Browser.registerprotocol(scheme, handler) end

---Unregister the custom protocol with `scheme`.
---@param scheme string
---@return nil
function Browser.unregisterprotocol(scheme) end

---Load the URL.
---@param url string
---@return nil
function Browser.loadurl(url) end

---Set the webpage contents and base URL.
---@param html string, baseurl string
---@return nil
function Browser.loadhtml(html, baseurl) end

---Return current URL.
---@return string
function Browser.geturl() end

---Return the title of document.
---@return string
function Browser.gettitle() end

---Change browser's user agent.
---@param useragent string
---@return nil
function Browser.setuseragent(useragent) end

---Return whether page's magnification can be changed with gestures.
---@return boolean
function Browser.ismagnifiable() end

---Set whether page's magnification can be changed with gestures.
---@param magnifiable boolean
---@return nil
function Browser.setmagnifiable(magnifiable) end

---Evaluate `code` in browser and get the evaluated result.
---@param code string, callback function
---@return nil
function Browser.executejavascript(code, callback) end

---Navigate to the back item in the back-forward list.
---@return nil
function Browser.goback() end

---Return whether there is a back item in the back-forward list that can be navigated to. 
---@return boolean
function Browser.cangoback() end

---Navigate to the forward item in the back-forward list.
---@return nil
function Browser.goforward() end

---Return whether there is a forward item in the back-forward list that can be navigated to. 
---@return boolean
function Browser.cangoforward() end

---Reload current page.
---@return nil
function Browser.reload() end

---Stop loading all resources on the current page.
---@return nil
function Browser.stop() end

---Return whether current page is loading content.
---@return boolean
function Browser.isloading() end

---Set the `name` of object which would have the native bindings.
---@param name string
---@return nil
function Browser.setbindingname(name) end

---Add a native binding to web page with `name`.
---@param name string, func function
---@return nil
function Browser.addbinding(name, func) end

---Add a raw handler to web page with `name`.
---@param name string, func function
---@return nil
function Browser.addrawbinding(name, func) end

---Remove the native binding with `name`.
---@param name string
---@return nil
function Browser.removebinding(name) end

return Browser
