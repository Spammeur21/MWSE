# mgeShadersConfig

Allows control of MGE shader features.

## Properties

### `debug`

*Read-only*. Gathers a string listing all shaders.

**Returns**:

* `result` (strings)

***

### `hdrReactionSpeed`

The HDR exposure reaction speed, in seconds.

**Returns**:

* `result` (number)

***

### `list`

*Read-only*. Loads a list of all shaders. This is not a constant-held collection, and each shader handle is initialized anew each time this function is called. Cache this value when you are sure that shaders are not added or removed.

**Returns**:

* `result` ([mgeShaderHandle](../../types/mgeShaderHandle)[])

***

## Functions

### `find`

Finds a loaded shader and returns a handle to it.

```lua
local shader = mgeShadersConfig.find({ name = ... })
```

**Parameters**:

* `params` (table)
	* `name` (string)

**Returns**:

* `shader` ([mgeShaderHandle](../../types/mgeShaderHandle), nil)

***

### `load`

Loads a shader by name, from the `Data Files/shaders/XEshaders` directory. Adds the shader to the existing shader list, or returns the existing shader if it is already loaded.

If the shader has a category annotation, it is inserted into a position that preserves the category ordering. Shaders without a category will be added to the end of the list.

Summary of category sort order:
* scene: Additional objects rendered into the scene.
* atmosphere: Atmosphere effects that render over all objects, such as mist.
* lens: Lens effects such as depth of field.
* sensor: Sensor effects such as bloom.
* tone: Tone mapping and color grading.
* final: Any effects that need to run last.

```lua
local shader = mgeShadersConfig.load({ name = ... })
```

**Parameters**:

* `params` (table)
	* `name` (string)

**Returns**:

* `shader` ([mgeShaderHandle](../../types/mgeShaderHandle), nil)

***

**Returns**:

* `result` ([mgeShadersConfig](../../types/mgeShadersConfig))

