# mgeCameraConfig

Allows control of MGE camera features.

## Properties

### `fov`

Horizontal FOV, in degrees.

**Returns**:

* `result` (number)

***

### `shakeAcceleration`

Camera shake acceleration. Camera shake must be enabled to see an effect.

**Returns**:

* `result` (number)

***

### `shakeEnable`

Set if camera shake is active.

**Returns**:

* `result` (boolean)

***

### `shakeMagnitude`

Camera shake magnitude. Camera shake must be enabled to see an effect.

**Returns**:

* `result` (number)

***

### `thirdPersonOffset`

The position offset (from the character) of the third person camera.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `zoom`

Camera zoom multiplier. Default is 1.0. Camera zoom must be enabled to see an effect.

**Returns**:

* `result` (number)

***

### `zoomEnable`

Set if camera zoom is enabled.

**Returns**:

* `result` (boolean)

***

## Functions

### `stopZoom`

Stops any continuous camera zoom.

```lua
mgeCameraConfig.stopZoom()
```

***

### `zoomContinuous`

Sets up continuous camera zoom. The zoom speed starts at `rate`. The speed will approach `targetRate` over time, if provided.

```lua
mgeCameraConfig.zoomContinuous({ rate = ..., targetRate = ... })
```

**Parameters**:

* `params` (table)
	* `rate` (number): *Optional*.
	* `targetRate` (number): *Optional*.

***

### `zoomIn`

Zooms in by the specified amount, or by a small amount if no amount is provided.

```lua
mgeCameraConfig.zoomIn({ amount = ... })
```

**Parameters**:

* `params` (table)
	* `amount` (number): *Default*: `0.0625`.

***

### `zoomOut`

Zooms out by the specified amount, or by a small amount if no amount is provided.

```lua
mgeCameraConfig.zoomOut({ amount = ... })
```

**Parameters**:

* `params` (table)
	* `amount` (number)

***

**Returns**:

* `result` ([mgeCameraConfig](../../types/mgeCameraConfig))

