# tes3weatherRain

A structure that contains weather information for the rain weather type.

This type inherits the following: [tes3weather](../../types/tes3weather)
## Properties

### `ambientDayColor`

*Read-only*. The weather's ambient day color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `ambientLoopSound`

*Read-only*. The weather's ambient looping sound.

**Returns**:

* `result` ([tes3sound](../../types/tes3sound))

***

### `ambientLoopSoundId`

The weather's ambient looping sound ID.

**Returns**:

* `result` (string)

***

### `ambientNightColor`

*Read-only*. The weather's ambient night color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `ambientPlaying`

*Read-only*. The weather's ambient playing flag.

**Returns**:

* `result` (boolean)

***

### `ambientSunriseColor`

*Read-only*. The weather's ambient sunrise color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `ambientSunsetColor`

*Read-only*. The weather's ambient sunset color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `cloudsMaxPercent`

The weather's cloud maximum percentage.

**Returns**:

* `result` (number)

***

### `cloudsSpeed`

The weather's cloud speed.

**Returns**:

* `result` (number)

***

### `cloudTexture`

The weather's cloud texture path.

**Returns**:

* `result` (string)

***

### `controller`

*Read-only*. The weather's weather controller.

**Returns**:

* `result` ([tes3weatherController](../../types/tes3weatherController))

***

### `fogDayColor`

*Read-only*. The weather's fog day color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `fogNightColor`

*Read-only*. The weather's fog night color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `fogSunriseColor`

*Read-only*. The weather's fog sunrise color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `fogSunsetColor`

*Read-only*. The weather's fog sunset color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `glareView`

The weather's glare view.

**Returns**:

* `result` (number)

***

### `index`

*Read-only*. The weather's index ID. Maps to values in the [`tes3.weather`](https://mwse.github.io/MWSE/references/weather-types/) table.

**Returns**:

* `result` (number)

***

### `landFogDayDepth`

The weather's land fog day depth value.

**Returns**:

* `result` (number)

***

### `landFogNightDepth`

The weather's land fog night depth value.

**Returns**:

* `result` (number)

***

### `maxParticles`

The weather's maximum particles.

**Returns**:

* `result` (number)

***

### `name`

*Read-only*. The weather's user-friendly name, hardcoded in English to match the INI settings name. These values can be `"Ashstorm"`, `"Blight"`, `"Blizzard"`, `"Clear"`, `"Cloudy"`, `"Foggy"`, `"Overcast"`, `"Rain"`, `"Snow"`, or `"Thunderstorm"` as appropriate.

**Returns**:

* `result` (string)

***

### `particleEntranceSpeed`

The weather's particle entrance speed.

**Returns**:

* `result` (number)

***

### `particleHeightMax`

The weather's particle maximum height.

**Returns**:

* `result` (number)

***

### `particleHeightMin`

The weather's particle minimum height.

**Returns**:

* `result` (number)

***

### `particleRadius`

The weather's particle radius.

**Returns**:

* `result` (number)

***

### `rainActive`

*Read-only*. The weather's active rain flag.

**Returns**:

* `result` (boolean)

***

### `rainLoopSound`

*Read-only*. The weather's rain loop sound object.

**Returns**:

* `result` ([tes3sound](../../types/tes3sound))

***

### `rainLoopSoundId`

The weather's rain loop sound ID.

**Returns**:

* `result` (string)

***

### `skyDayColor`

*Read-only*. The weather's sky day color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `skyNightColor`

*Read-only*. The weather's sky night color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `skySunriseColor`

*Read-only*. The weather's sky sunrise color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `skySunsetColor`

*Read-only*. The weather's sky sunset color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `sunDayColor`

*Read-only*. The weather's sun day color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `sundiscSunsetColor`

*Read-only*. The weather's sundisc sunset color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `sunNightColor`

*Read-only*. The weather's sun night color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `sunSunriseColor`

*Read-only*. The weather's sun sunrise color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `sunSunsetColor`

*Read-only*. The weather's sun sunset color. The values can range from 0 to 1.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `threshold`

The weather's threshold value.

**Returns**:

* `result` (number)

***

### `transitionDelta`

The weather's transition delta.

**Returns**:

* `result` (number)

***

### `underwaterSoundState`

*Read-only*. The weather's underwater sound state flag. This value will be `true`, while the player is underwater.

**Returns**:

* `result` (boolean)

***

### `windSpeed`

The weather's wind speed.

**Returns**:

* `result` (number)

***

