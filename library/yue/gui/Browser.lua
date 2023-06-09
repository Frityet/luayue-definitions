---@meta

--[[# Browser

### Native webview using system browser.

### Details

Using `Browser` requires relatively new operating systems, for macOS the
minimum version required is 10.10, for Linux it is required to install the
`webkit2gtk` library with at least version 2.8.

On Windows the latest version of IE installed would be used by default.

On Linux due to poor support of hardware acceleration, the browser may fail to
show anything, in that case you may want to disable hardware acceleration.

## WebView2 support

On Windows there is support for using
[WebView2](https://docs.microsoft.com/en-us/microsoft-edge/webview2/) as
browser backend, to enable it, you need to:

1. Set the `<!name>webview2_support` option to `true`.
2. Ship the `WebView2Loader.dll` file together with your program.
3. Have users install Edge Beta/Dev/Canary or
[WebView2 Runtime](https://docs.microsoft.com/en-us/microsoft-edge/webview2/concepts/distribution)
on their machines.

There are also a few things to notice:
1. When WebView2 failed to initialize for any reason, the browser will
fallback to use IE as backend quietly.
2. If you don't use WebView2, it is safe to remove the `WebView2Loader.dll`
file.
3. WebView2 can not use stable channels of Edge, it will search channels in
the order of WebView2 Runtime, Beta, Dev, and Canary.
4. Some `Browser` APIs are not implemented with WebView2 backend, due to lack
of APIs in WebView2.

[API Documentation](https://libyue.com/docs/latest/lua/api/browser.html#)
]]
---@class nu.Browser : nu.View
---@field onclose (fun(self: nu.Browser): nil) | nu.Signal Emitted when the web page requests to close.
---@field onupdatecommand (fun(self: nu.Browser): nil) | nu.Signal Emitted when the back-forward list has changed.
---@field onchangeloading (fun(self: nu.Browser): nil) | nu.Signal Emitted when the browser starts or stops loading content.
---@field onupdatetitle (fun(self: nu.Browser, title: string): nil) | nu.Signal Emitted when document's title is changed.
---@field onstartnavigation (fun(self: nu.Browser, url: string): nil) | nu.Signal Emitted when the browser begins provisional navigation.
---@field oncommitnavigation (fun(self: nu.Browser, url: string): nil) | nu.Signal Emitted when the browser begins to receive web content.
---@field onfinishnavigation (fun(self: nu.Browser, url: string): nil) | nu.Signal Emitted when the navigation is complete.
---@field onfailnavigation (fun(self: nu.Browser, url: string, code: integer): nil) | nu.Signal Emitted when the navigation fails.
local Browser = {}
--[[## Create a new browser view.



]]
---@param options nu.Browser.Options
---@return nu.Browser
function Browser.create(options) end

--[[## Register a custom protocol with `scheme` and `handler`.

### Details

When the browser sends a request with `scheme`, the `handler` will be
called with `handler(url)`, and the `handler` must return an instance of
class that inherits from `<!type>ProtocolJob`.

The `handler` is guaranteed to be called in the main thread.

This API is not supported on Windows with WebView2 backend.


]]
---@param scheme string
---@param handler function
---@return boolean
function Browser.registerprotocol(scheme, handler) end

--[[## Unregister the custom protocol with `scheme`.

### Details

This API is not supported on Windows with WebView2 backend.

]]
---@param scheme string
---@return nil
function Browser.unregisterprotocol(scheme) end

--[[## Load the URL.



]]
---@param url string
---@return nil
function Browser:loadurl(url) end

--[[## Set the webpage contents and base URL.

### Details

On Windows with WebView2 backend, `baseurl` is not respected.

]]
---@param html string
---@param baseurl string
---@return nil
function Browser:loadhtml(html, baseurl) end

--[[## Return current URL.



]]
---@return string
function Browser:geturl() end

--[[## Return the title of document.



]]
---@return string
function Browser:gettitle() end

--[[## Change browser's user agent.

### Details

On Windows, due to Internet Explorer's limitations, calling `SetUserAgent`
would change all web pages' user agents in current process.

This API is not supported on Windows with WebView2 backend.


]]
---@param useragent string
---@return nil
function Browser:setuseragent(useragent) end

--[[## Return whether page's magnification can be changed with gestures.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return boolean
function Browser:ismagnifiable() end

--[[## Set whether page's magnification can be changed with gestures.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param magnifiable boolean
---@return nil
function Browser:setmagnifiable(magnifiable) end

--[[## Evaluate `code` in browser and get the evaluated result.

### Details

The `callback` will be called with `callback(success, result)`, the
`result` argument is a generic value that created from the result of
`code`.

Note that due to limitations of system toolkits, the execution may fail if
the result of execution of `code` can not be fully converted to JSON.

On Windows with WebView2 backend, the `success` may be true even when
exception is threw in the executed code.

On Windows with IE backend, the `code` is executed synchronously and
the `callback` is called before this API returns.


]]
---@param code string
---@param callback function
---@return nil
function Browser:executejavascript(code, callback) end

--[[## Receive cookies under `url`.

### Details

This API will include HTTP only cookies.

This API is not implemented on Windows with IE backend.


]]
---@param url string
---@param callback function
---@return nil
function Browser:getcookiesforurl(url, callback) end

--[[## Navigate to the back item in the back-forward list.



]]
---@return nil
function Browser:goback() end

--[[## Return whether there is a back item in the back-forward list that can be
navigated to.




]]
---@return boolean
function Browser:cangoback() end

--[[## Navigate to the forward item in the back-forward list.



]]
---@return nil
function Browser:goforward() end

--[[## Return whether there is a forward item in the back-forward list that can
be navigated to.




]]
---@return boolean
function Browser:cangoforward() end

--[[## Reload current page.



]]
---@return nil
function Browser:reload() end

--[[## Stop loading all resources on the current page.



]]
---@return nil
function Browser:stop() end

--[[## Return whether current page is loading content.



]]
---@return boolean
function Browser:isloading() end

--[[## Set the `name` of object which would have the native bindings.

### Details

By default native bindings are added to the `window` object, by calling
this API, native bindings will be added to the `window[name]` object.


]]
---@param name string
---@return nil
function Browser:setbindingname(name) end

--[[## Add a native binding to web page with `name`.

### Details

The `func` will be called with automatically converted arguments.


]]
---@param name string
---@param func function
---@return nil
function Browser:addbinding(name, func) end

--[[## Add a raw handler to web page with `name`.

### Details

The `func` will be called with a list of arguments passed from JavaScript.


]]
---@param name string
---@param func function
---@return nil
function Browser:addrawbinding(name, func) end

--[[## Remove the native binding with `name`.



]]
---@param name string
---@return nil
function Browser:removebinding(name) end

--[[## Buffer following calls of `<!name>AddBinding` until
`<!name>EndAddingBindings` is called.


### Details

Adding a native binding is an expensive operation, if you are adding a
lot of bindings, it is recommended to wrap the `<!name>AddBinding` calls
between a pair of `<!name>BeginAddingBindings` and `<!name>EndAddingBindings`
which will buffer the bindings and reduce the cost to minimal.


]]
---@return nil
function Browser:beginaddingbindings() end

--[[## Consolidate bindings added.



]]
---@return nil
function Browser:endaddingbindings() end

return Browser
