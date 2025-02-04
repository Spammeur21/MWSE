# mgeShaderHandle

A loaded MGE shader.

## Properties

### `enabled`

The enabled state of the shader.

**Returns**:

* `result` (boolean)

***

### `name`

The shader name.

**Returns**:

* `result` (string)

***

### `orderPriority`

The calculated ordering priority value of the shader, that allows auto-sorting of shaders. Changing this value will re-sort the shader list.

**Returns**:

* `result` (number)

***

### `variables`

Lists the shader's editable variables. The result table has the variable names as keys, and the variable types as values. To get and set the actual variable, use the expression `shaderHandle.<variableName>`.
	
	Variable types are:
	'b' boolean
	'i' integer
	'f' float
	's' string
	'a' float array
	'2' vec2
	'3' vec3
	'4' vec4
	'm' matrix

**Returns**:

* `result` (table)

***

## Methods

### `reload`

Reloads and recompiles the shader. Returns if the reload was successful.

```lua
local result = myObject:reload()
```

**Returns**:

* `result` (boolean)

***

