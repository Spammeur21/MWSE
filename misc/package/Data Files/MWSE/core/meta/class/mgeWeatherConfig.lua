--- @meta
--- @diagnostic disable:undefined-doc-name

--- Allows control of MGE weather features.
--- @class mgeWeatherConfig
mgeWeatherConfig = {}

--- No description yet available.
--- @param weather number No description yet available.
function mgeWeatherConfig.getDistantFog(weather) end

--- Gets the PPL data for a weather from MGE. These are returned in a table with the `sun` and `ambient` keys, as well as the `weather` redefined. The result table can be modified, then sent back to `setPerPixelLighting`.
--- @param weather number No description yet available.
--- @return table<string, number> result No description yet available.
function mgeWeatherConfig.getPerPixelLighting(weather) end

--- Gets the in- and out-scatter values from MGE. These are returned in a table with the `inscatter` and `outscatter` keys. The result table can be modified, then sent back to `setScattering`.
--- @return table<string, tes3vector3> scatters No description yet available.
function mgeWeatherConfig.getScattering() end

--- Gets the wind speed for a weather from MGE. This is returned in a table with the `speed` key, as well as the `weather` redefined. The result table can be modified, then sent back to `setWind`.
--- @param weather number No description yet available.
--- @return table<string, number> result A package containing the speed property.
function mgeWeatherConfig.getWind(weather) end

--- No description yet available.
--- @param params mgeWeatherConfig.setDistantFog.params This table accepts the following values:
--- 
--- `weather`: number — No description yet available.
--- 
--- `distance`: number — No description yet available.
--- 
--- `offset`: number — No description yet available.
function mgeWeatherConfig.setDistantFog(params) end

---Table parameter definitions for `mgeWeatherConfig.setDistantFog`.
--- @class mgeWeatherConfig.setDistantFog.params
--- @field weather number No description yet available.
--- @field distance number No description yet available.
--- @field offset number No description yet available.

--- Sets the PPL values for a weather in MGE. The result table of `getPerPixelLighting` can be modified then passed to this function.
--- @param params mgeWeatherConfig.setPerPixelLighting.params This table accepts the following values:
--- 
--- `weather`: number — No description yet available.
--- 
--- `sun`: number — No description yet available.
--- 
--- `ambient`: number — No description yet available.
function mgeWeatherConfig.setPerPixelLighting(params) end

---Table parameter definitions for `mgeWeatherConfig.setPerPixelLighting`.
--- @class mgeWeatherConfig.setPerPixelLighting.params
--- @field weather number No description yet available.
--- @field sun number No description yet available.
--- @field ambient number No description yet available.

--- Sets the in- and out-scatter values for MGE. The result table of `getScattering` can be modified then passed to this function.
--- @param params mgeWeatherConfig.setScattering.params This table accepts the following values:
--- 
--- `inscatter`: tes3vector3|table — No description yet available.
--- 
--- `outscatter`: tes3vector3|table — No description yet available.
--- @return table<string, number> success No description yet available.
function mgeWeatherConfig.setScattering(params) end

---Table parameter definitions for `mgeWeatherConfig.setScattering`.
--- @class mgeWeatherConfig.setScattering.params
--- @field inscatter tes3vector3|table No description yet available.
--- @field outscatter tes3vector3|table No description yet available.

--- Sets the wind speed for a weather in MGE. The result table of `getWind` can be modified then passed to this function.
--- @param params mgeWeatherConfig.setWind.params This table accepts the following values:
--- 
--- `weather`: number — No description yet available.
--- 
--- `speed`: number — No description yet available.
function mgeWeatherConfig.setWind(params) end

---Table parameter definitions for `mgeWeatherConfig.setWind`.
--- @class mgeWeatherConfig.setWind.params
--- @field weather number No description yet available.
--- @field speed number No description yet available.

