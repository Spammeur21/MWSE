# mge

The mge library accesses MGE XE functionality, including control over shaders. Many older functions have been deprecated.

## Properties

### `mge.camera`

Allows control of MGE camera features.

**Returns**:

* `result` ([mgeCameraConfig](../../types/mgeCameraConfig))

***

### `mge.distantLandRenderConfig`

Allows control of the camera.

**Returns**:

* `result` ([mgeDistantLandRenderConfig](../../types/mgeDistantLandRenderConfig))

***

### `mge.render`

Allows control of render features.

**Returns**:

* `result` ([mgeRenderFeatures](../../types/mgeRenderFeatures))

***

### `mge.shaders`

Allows control of shaders.

**Returns**:

* `result` ([mgeShadersConfig](../../types/mgeShadersConfig))

***

### `mge.weather`

Allows control of MGE weather features.

**Returns**:

* `result` ([mgeWeatherConfig](../../types/mgeWeatherConfig))

***

## Functions

### `mge.enabled`

Determines if the MGE XE interface is enabled.

```lua
local enabled = mge.enabled()
```

**Returns**:

* `enabled` (boolean)

***

### `mge.getLightingMode`

Returns the lighting mode used by MGE XE. These values map to `mge.lightingMode.*` constants.

```lua
local mode = mge.getLightingMode()
```

**Returns**:

* `mode` (number): Maps to the `mge.lightingMode.*` constants.

***

### `mge.getUIScale`

Returns the GUI scaling used by MGE XE.

```lua
local scale = mge.getUIScale()
```

**Returns**:

* `scale` (number)

***

### `mge.getVersion`

Gets the MGE version. Wrapper for MGEGetVersion.

```lua
local result = mge.getVersion()
```

**Returns**:

* `result` (number)

***

### `mge.loadConfig`

Reloads the MGE config file. This is primarily an internal function and shouldn't be called casually.

```lua
mge.loadConfig()
```

***

### `mge.reloadDistantLand`

Reloads the MGE distant land. This is a blocking call that can take some seconds.

```lua
mge.reloadDistantLand()
```

***

### `mge.saveConfig`

Saves the MGE config file. This is primarily an internal function and shouldn't be called casually.

```lua
mge.saveConfig()
```

***

### `mge.setLightingMode`

Sets the lighting mode used by MGE XE. The values passed can be used from the `mge.lightingMode.*` constants.

```lua
mge.setLightingMode(mode)
```

**Parameters**:

* `mode` (number): Maps from the `mge.lightingMode.*` constants.

***

### `mge.setUIScale`

Sets the GUI scaling used by MGE XE.

```lua
mge.setUIScale(scale)
```

**Parameters**:

* `scale` (number)

***

