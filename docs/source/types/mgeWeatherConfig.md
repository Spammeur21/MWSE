# mgeWeatherConfig

Allows control of MGE weather features.

## Functions

### `getDistantFog`

No description yet available.

```lua
mgeWeatherConfig.getDistantFog(weather)
```

**Parameters**:

* `weather` (number)

***

### `getPerPixelLighting`

Gets the PPL data for a weather from MGE. These are returned in a table with the `sun` and `ambient` keys, as well as the `weather` redefined. The result table can be modified, then sent back to `setPerPixelLighting`.

```lua
local result = mgeWeatherConfig.getPerPixelLighting(weather)
```

**Parameters**:

* `weather` (number)

**Returns**:

* `result` (table&lt;string, number&gt;)

***

### `getScattering`

Gets the in- and out-scatter values from MGE. These are returned in a table with the `inscatter` and `outscatter` keys. The result table can be modified, then sent back to `setScattering`.

```lua
local scatters = mgeWeatherConfig.getScattering()
```

**Returns**:

* `scatters` (table&lt;string, [tes3vector3](../../types/tes3vector3)&gt;)

***

### `getWind`

Gets the wind speed for a weather from MGE. This is returned in a table with the `speed` key, as well as the `weather` redefined. The result table can be modified, then sent back to `setWind`.

```lua
local result = mgeWeatherConfig.getWind(weather)
```

**Parameters**:

* `weather` (number)

**Returns**:

* `result` (table&lt;string, number&gt;): A package containing the speed property.

***

### `setDistantFog`

No description yet available.

```lua
mgeWeatherConfig.setDistantFog({ weather = ..., distance = ..., offset = ... })
```

**Parameters**:

* `params` (table)
	* `weather` (number)
	* `distance` (number)
	* `offset` (number)

***

### `setPerPixelLighting`

Sets the PPL values for a weather in MGE. The result table of `getPerPixelLighting` can be modified then passed to this function.

```lua
mgeWeatherConfig.setPerPixelLighting({ weather = ..., sun = ..., ambient = ... })
```

**Parameters**:

* `params` (table)
	* `weather` (number)
	* `sun` (number)
	* `ambient` (number)

***

### `setScattering`

Sets the in- and out-scatter values for MGE. The result table of `getScattering` can be modified then passed to this function.

```lua
local success = mgeWeatherConfig.setScattering({ inscatter = ..., outscatter = ... })
```

**Parameters**:

* `params` (table)
	* `inscatter` ([tes3vector3](../../types/tes3vector3), table)
	* `outscatter` ([tes3vector3](../../types/tes3vector3), table)

**Returns**:

* `success` (table&lt;string, number&gt;)

***

### `setWind`

Sets the wind speed for a weather in MGE. The result table of `getWind` can be modified then passed to this function.

```lua
mgeWeatherConfig.setWind({ weather = ..., speed = ... })
```

**Parameters**:

* `params` (table)
	* `weather` (number)
	* `speed` (number)

***

**Returns**:

* `result` ([mgeWeatherConfig](../../types/mgeWeatherConfig))

