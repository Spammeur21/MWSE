# niColor

An object that represents a RGB color.

## Properties

### `b`

The blue value of the color.

**Returns**:

* `result` (number)

***

### `blue`

Alias for the blue value of the color.

**Returns**:

* `result` (number)

***

### `g`

The green value of the color.

**Returns**:

* `result` (number)

***

### `green`

Alias for the green value of the color.

**Returns**:

* `result` (number)

***

### `r`

The red value of the color.

**Returns**:

* `result` (number)

***

### `red`

Alias for the red value of the color.

**Returns**:

* `result` (number)

***

## Methods

### `clamp`

Clamps the color object.

```lua
myObject:clamp()
```

***

### `copy`

Creates a copy of the color object.

```lua
local result = myObject:copy()
```

**Returns**:

* `result` ([niColor](../../types/niColor))

***

### `lerp`

Calculates the interpolated color between this color and another, given a transition.

```lua
local lerpedcolor = myObject:lerp(tocolor, transition)
```

**Parameters**:

* `tocolor` ([niColor](../../types/niColor)): The color to interpolate towards.
* `transition` (number): The interpolation value. Must be between 0.0 (closer to this color) and 1.0 (closer to the other color).

**Returns**:

* `lerpedcolor` ([niColor](../../types/niColor)): The calculated value.

***

### `toVector3`

Creates a vector3 of the color object.

```lua
local result = myObject:toVector3()
```

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

## Functions

### `new`

Creates a new niColor.

```lua
local color = niColor.new(r, g, b)
```

**Parameters**:

* `r` (number): The red value for the color.
* `g` (number): The green value for the color.
* `b` (number): The blue value for the color.

**Returns**:

* `color` ([niColor](../../types/niColor))

***

