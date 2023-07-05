---@meta

--[[# App

### Application class.

#### Details

This class represents current app and provides app wide APIs.

This class can not be created by user, you can only receive its global
instance from the `app` property of the module:

```lua
gui.app:getapplicationmenu()
```

[API Documentation](https://libyue.com/docs/latest/lua/api/app.html#)
]]
---@class nu.App
local App = {}
--[[## Set the name of current app.

#### Details

The app name should be something like "My App", it will be used in vairous
places, such as folder name when storing user data, or key name when
writing registry.

You should always call this API at the beginning of your app.

On macOS it is strong recommended to use the same name with the
`CFBundleName` field of app bundle's `Info.plist` file.


]]
---@param name string 
---@return nil 
function App:setname(name) end

--[[## Return current app's name.

#### Details

If `<!method>App::SetName(name)` has never been called, this API will try to guess a
name from existing information, for example the executable's version info,
or the app bundle information, or the executable file's base name.


]]
---@return string 
function App:getname() end

--[[## Set the application ID.

| ❗ This method is only available on the following platforms: Windows, Linux ❗ |
|---------------------------------------------------------------------------------|
#### Details

The application ID must be globally unique, and it is recommended to use
something like "org.myself.myapp".

On macOS the application ID is the app bundle ID, and there is no way to
change it at runtime.

On Linux the application ID will be used in various places, such as the
name of the [`.desktop` file](https://developer.gnome.org/integration-guide/stable/desktop-files.html),
or the base name of GSettings schemas.

On Windows the application ID is [`AppUserModelID`](https://docs.microsoft.com/en-us/windows/win32/shell/appids),
it is mainly used to recognize which app a process belongs to. For
UWP/Desktop Bridge apps, Windows will assign an AppUserModelID to the app
and this API should not be used.


]]
---@param id string 
---@return nil 
function App:setid(id) end

--[[## Return the application ID.

#### Details

On macOS if the app is bundled, the app bundle ID will be returned,
otherwise empty string will be returned.

On Linux the ID set by `<!name>SetID` will be returned.

On Windows the [`AppUserModelID`](https://docs.microsoft.com/en-us/windows/win32/shell/appids)
will be returned. If neither you or Windows ever assigned an ID to the
app, empty string will be returned.


]]
---@return string 
function App:getid() end

--[[## Set the application menu bar.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param menu nu.MenuBar 
---@return nil 
function App:setapplicationmenu(menu) end

--[[## Return the application menu bar.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return nu.MenuBar 
function App:getapplicationmenu() end

--[[## Set the `label` to be displayed in dock’s badging area.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param label string 
---@return nil 
function App:setdockbadgelabel(label) end

--[[## Get the label displayed in dock’s badging area.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return string 
function App:getdockbadgelabel() end

--[[## Return whether app is running as UWP/Desktop Bridge.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
#### Details

On Windows the Win32 apps can run as UWP apps by using
[Desktop Bridge](https://techcommunity.microsoft.com/t5/windows-dev-appconsult/desktop-bridge-8211-the-bridge-between-desktop-apps-and-the/ba-p/316488),
which is required for submitting Win32 apps to Microsoft Store.

There are a few runtime differences when running apps as UWP, and this
API can be used to detect the environment.


]]
---@return boolean 
function App:isrunningasuwp() end

--[[## Create a start menu shortcut for current user linking to current process.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|
#### Details

This API will write the `AppUserModelID` and `ToastActivatorCLSID` to the
shortcut file, and the shortcut file's name will be the app's name, so it
is recommended to call `<!method>App::SetID(id)` and
`<!method>App::SetName(name)` before using this API.

Note that on Windows you should generally not write start menu shortcut
automatically, by convention the file is commonly created by installers
or users themselves. This API is usually used for testing purpose.


]]
---@param options nu.App.ShortcutOptions 
---@return boolean 
function App:createstartmenushortcut(options) end

--[[## Return file path to the shortcut created by the `<!method>App::CreateStartMenuShortcut(options)` API.

| ❗ This method is only available on the following platforms: Windows ❗ |
|--------------------------------------------------------------------------|


]]
---@return string 
function App:getstartmenushortcutpath() end

--[[## Make current app the active app.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|
#### Details

The `force` parameter is normally set to false. When the Finder launches
an app, using a value of false for `force` allows the app to become active
if the user waits for it to launch, but the app remains unobtrusive if the
user activates another app. Regardless of the setting of flag, there may
be a time lag before the app activates—you should not assume the app will
be active immediately after sending this message.


]]
---@param force boolean 
---@return nil 
function App:activate(force) end

--[[## Deactivate current app.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return nil 
function App:deactivate() end

--[[## Return whether current app is the active app.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return boolean 
function App:isactive() end

--[[## Modify the app's activation policy.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@param policy nu.App.ActivationPolicy 
---@return nil 
function App:setactivationpolicy(policy) end

--[[## Return app's activation policy.

| ❗ This method is only available on the following platforms: macOS ❗ |
|------------------------------------------------------------------------|


]]
---@return nu.App.ActivationPolicy 
function App:getactivationpolicy() end

return App
