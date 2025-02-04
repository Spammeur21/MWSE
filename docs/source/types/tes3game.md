# tes3game

A core game object used for storing game settings.

## Properties

### `activationAmbientLight`

*Read-only*. No description yet available.

**Returns**:

* `result` ([niAmbientLight](../../types/niAmbientLight))

***

### `debugRoot`

*Read-only*. Access to the root of the scene graph of the Debug menu layer.

**Returns**:

* `result` ([niNode](../../types/niNode))

***

### `fogProperty`

*Read-only*. No description yet available.

**Returns**:

* `result` ([niFogProperty](../../types/niFogProperty))

***

### `parentWindowHandle`

*Read-only*. The Windows HWND for the parent window.

**Returns**:

* `result` (number)

***

### `playerTarget`

*Read-only*. The current activation target.

**Returns**:

* `result` ([tes3reference](../../types/tes3reference))

***

### `renderDistance`

The game's rendering distance.

**Returns**:

* `result` (number)

***

### `sceneGraphCollideString`

*Read-only*. No description yet available.

**Returns**:

* `result` ([niNode](../../types/niNode))

***

### `sceneGraphGridString`

*Read-only*. No description yet available.

**Returns**:

* `result` ([niNode](../../types/niNode))

***

### `sceneGraphTextureString`

*Read-only*. No description yet available.

**Returns**:

* `result` ([niNode](../../types/niNode))

***

### `screenShotsEnabled`

State on if screenshots are enabled.

**Returns**:

* `result` (boolean)

***

### `screenX`

*Read-only*. The screen's horizontal position.

**Returns**:

* `result` (number)

***

### `screenY`

*Read-only*. The screen's vertical position.

**Returns**:

* `result` (number)

***

### `soundQuality`

Sound quality level.

**Returns**:

* `result` (number)

***

### `volumeEffect`

Mix volumes for effects.

**Returns**:

* `result` (number)

***

### `volumeFootsteps`

Mix volumes for footsteps.

**Returns**:

* `result` (number)

***

### `volumeMaster`

Mix volumes for all sounds.

**Returns**:

* `result` (number)

***

### `volumeMedia`

Mix volumes for music.

**Returns**:

* `result` (number)

***

### `volumeVoice`

Mix volumes for voices.

**Returns**:

* `result` (number)

***

### `windowHandle`

*Read-only*. The Windows HWND for the window.

**Returns**:

* `result` (number)

***

### `wireframeProperty`

*Read-only*. The reused wireframe property, applied when toggling wireframe rendering.

**Returns**:

* `result` ([niProperty](../../types/niProperty))

***

### `worldLandscapeRoot`

*Read-only*. Access to the root of the scene graph of all the currently loaded terrain.

**Returns**:

* `result` ([niNode](../../types/niNode))

***

### `worldObjectRoot`

*Read-only*. Access to the root of the scene graph containing all the static objects, and lights that can't be picked up.

**Returns**:

* `result` ([niNode](../../types/niNode))

***

### `worldPickRoot`

*Read-only*. Access to the root of the scene graph containing all the objects that can be interacted with (NPCs, items, harvestable plants, activators, doors...), but also some objects that are only rendered in the Construction Set such as sound emmiting activator objects with EditorMarker.NIF mesh.

**Returns**:

* `result` ([niNode](../../types/niNode))

***

### `worldRoot`

*Read-only*. Access to the root of the world scene graph.

**Returns**:

* `result` ([niNode](../../types/niNode))

***

### `worldSceneGraphRoot`

*Read-only*. Deprecated, please use `tes3.game.worldRoot` instead. Access to the root of the scene graph.

**Returns**:

* `result` ([niNode](../../types/niNode))

***

## Methods

### `clearTarget`

Clears data related to activation, resetting what the player can activate.

```lua
myObject:clearTarget()
```

***

### `setGamma`

This method allows changing gamma correction.

```lua
myObject:setGamma(value)
```

**Parameters**:

* `value` (number)

***

