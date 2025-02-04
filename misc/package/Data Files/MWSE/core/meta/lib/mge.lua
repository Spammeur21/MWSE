--- @meta
--- @diagnostic disable:undefined-doc-name

--- The mge library accesses MGE XE functionality, including control over shaders. Many older functions have been deprecated.
--- @class mgelib
--- @field camera mgeCameraConfig Allows control of MGE camera features.
--- @field distantLandRenderConfig mgeDistantLandRenderConfig Allows control of the camera.
--- @field render mgeRenderFeatures Allows control of render features.
--- @field shaders mgeShadersConfig Allows control of shaders.
--- @field weather mgeWeatherConfig Allows control of MGE weather features.
mge = {}

--- Disables a loaded shader.
--- @deprecated
--- @param params mge.disableShader.params This table accepts the following values:
--- 
--- `name`: string — No description yet available.
function mge.disableShader(params) end

---Table parameter definitions for `mge.disableShader`.
--- @class mge.disableShader.params
--- @field name string No description yet available.

--- Disables camera zoom. Use `mge.camera.zoomEnabled = false` instead.
--- @deprecated
function mge.disableZoom() end

--- Determines if the MGE XE interface is enabled.
--- @return boolean enabled No description yet available.
function mge.enabled() end

--- Enables a loaded shader.
--- @deprecated
--- @param params mge.enableShader.params This table accepts the following values:
--- 
--- `name`: string — No description yet available.
function mge.enableShader(params) end

---Table parameter definitions for `mge.enableShader`.
--- @class mge.enableShader.params
--- @field name string No description yet available.

--- Enables camera zoom. Use `mge.camera.zoomEnabled = true` instead.
--- @deprecated
function mge.enableZoom() end

--- Returns the lighting mode used by MGE XE. These values map to `mge.lightingMode.*` constants.
--- @return number mode Maps to the `mge.lightingMode.*` constants.
function mge.getLightingMode() end

--- Gets the window's vertical resolution. Use `tes3.getViewportSize()` instead.
--- @deprecated
--- @return number result No description yet available.
function mge.getScreenHeight() end

--- Gets the window's horizontal resolution. Use `tes3.getViewportSize()` instead.
--- @deprecated
--- @return number result No description yet available.
function mge.getScreenWidth() end

--- Returns the GUI scaling used by MGE XE.
--- @return number scale No description yet available.
function mge.getUIScale() end

--- Gets the MGE version. Wrapper for MGEGetVersion.
--- @return number result No description yet available.
function mge.getVersion() end

--- Gets the weather distant land fog. Use `mge.weather.getDistantFog()` instead.
--- @deprecated
--- @param weather number No description yet available.
--- @return number mult No description yet available.
--- @return number offset No description yet available.
function mge.getWeatherDLFog(weather) end

--- Gets the weather per pixel light settings. Use `mge.weather.getPerPixelLighting()` instead.
--- @deprecated
--- @param weather number No description yet available.
--- @return number mult No description yet available.
--- @return number offset No description yet available.
function mge.getWeatherPPLLight(weather) end

--- Gets the in- and out-scatter values from MGE. These are returned in a table with the `inscatter` and `outscatter` keys. The result table can be modified, then sent back to `setScattering`.
--- @deprecated
--- @return table<string, float> result No description yet available.
function mge.getWeatherScattering() end

--- Gets the camera zoom. Use `mge.camera.zoom` instead.
--- @deprecated
--- @return number amount No description yet available.
function mge.getZoom() end

--- Reloads the MGE config file. This is primarily an internal function and shouldn't be called casually.
function mge.loadConfig() end

--- Reloads the MGE distant land. This is a blocking call that can take some seconds.
function mge.reloadDistantLand() end

--- Saves the MGE config file. This is primarily an internal function and shouldn't be called casually.
function mge.saveConfig() end

--- Sets the lighting mode used by MGE XE. The values passed can be used from the `mge.lightingMode.*` constants.
--- @param mode number Maps from the `mge.lightingMode.*` constants.
function mge.setLightingMode(mode) end

--- Sets a shader float value. Use the named variable interface on the shader handle instead.
--- @deprecated
--- @param params mge.setShaderFloat.params This table accepts the following values:
--- 
--- `name`: string — No description yet available.
--- 
--- `variable`: string — No description yet available.
--- 
--- `value`: number — No description yet available.
function mge.setShaderFloat(params) end

---Table parameter definitions for `mge.setShaderFloat`.
--- @class mge.setShaderFloat.params
--- @field name string No description yet available.
--- @field variable string No description yet available.
--- @field value number No description yet available.

--- Sets a shader long value. Use the named variable interface on the shader handle instead.
--- @deprecated
--- @param params mge.setShaderLong.params This table accepts the following values:
--- 
--- `name`: string — No description yet available.
--- 
--- `variable`: string — No description yet available.
--- 
--- `value`: number — No description yet available.
function mge.setShaderLong(params) end

---Table parameter definitions for `mge.setShaderLong`.
--- @class mge.setShaderLong.params
--- @field name string No description yet available.
--- @field variable string No description yet available.
--- @field value number No description yet available.

--- Sets the GUI scaling used by MGE XE.
--- @param scale number No description yet available.
function mge.setUIScale(scale) end

--- Sets the weather distant land fog. Use `mge.weather.setDistantFog()` instead.
--- @deprecated
--- @param weather number No description yet available.
--- @param mult number No description yet available.
--- @param offset number No description yet available.
function mge.setWeatherDLFog(weather, mult, offset) end

--- Sets the weather per pixel light settings. Use `mge.weather.setPerPixelLighting()` instead.
--- @deprecated
--- @param weather number No description yet available.
--- @param mult number No description yet available.
--- @param offset number No description yet available.
function mge.setWeatherPPLLight(weather, mult, offset) end

--- Use `mge.weather.getScattering()` instead.
--- @deprecated
--- @return table<string, float> result No description yet available.
function mge.setWeatherScattering() end

--- Sets the zoom to a specified amount. Use `mge.camera.zoom = amount` instead.
--- @deprecated
--- @param params mge.setZoom.params This table accepts the following values:
--- 
--- `amount`: number — No description yet available.
function mge.setZoom(params) end

---Table parameter definitions for `mge.setZoom`.
--- @class mge.setZoom.params
--- @field amount number No description yet available.

--- Toggles the camera zoom. Use `mge.camera.zoomEnable = not mge.camera.zoomEnable` instead.
--- @deprecated
function mge.toggleZoom() end

--- Zooms in by the specified amount. Use `mge.camera.zoomIn()` instead.
--- @deprecated
--- @param params mge.zoomIn.params This table accepts the following values:
--- 
--- `amount`: number — No description yet available.
function mge.zoomIn(params) end

---Table parameter definitions for `mge.zoomIn`.
--- @class mge.zoomIn.params
--- @field amount number No description yet available.

--- Zooms in by the specified amount. Use `mge.camera.zoomOut()` instead.
--- @deprecated
--- @param params mge.zoomOut.params This table accepts the following values:
--- 
--- `amount`: number — No description yet available.
function mge.zoomOut(params) end

---Table parameter definitions for `mge.zoomOut`.
--- @class mge.zoomOut.params
--- @field amount number No description yet available.

mge.lightingMode = require("mge.lightingMode")
