# niColorA

An object that represents a RGB color with alpha channel support.

## Properties

### `a`

The alpha value of the color.

**Returns**:

* `result` (number)

***

### `alpha`

The alpha value of the color.

**Returns**:

* `result` (number)

***

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

### `copy`

Creates a copy of the color object.

```lua
local result = myObject:copy()
```

**Returns**:

* `result` ([niColorA](../../types/niColorA))

***

### `lerp`

Calculates the interpolated color between this color and another, given a transition.

```lua
local lerpedcolor = myObject:lerp(tocolor, transition)
```

**Parameters**:

* `tocolor` ([niColorA](../../types/niColorA)): The color to interpolate towards.
* `transition` (number): The interpolation value. Must be between 0.0 (closer to this color) and 1.0 (closer to the other color).

**Returns**:

* `lerpedcolor` ([niColorA](../../types/niColorA)): The calculated value.

***

## Functions

### `new`

Creates a new niColorA.

```lua
local color = niColorA.new(r, g, b, a)
```

**Parameters**:

* `r` (number): The red value for the color.
* `g` (number): The green value for the color.
* `b` (number): The blue value for the color.
* `a` (number): The alpha value for the color.

**Returns**:

* `color` ([niColorA](../../types/niColorA))

***

