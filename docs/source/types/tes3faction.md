# tes3faction

A faction game object.

This type inherits the following: [tes3baseObject](../../types/tes3baseObject)
## Properties

### `attributes`

*Read-only*. An array-style table holding the two attributes that govern advancement. Maps to values in [`tes3.attribute`](https://mwse.github.io/MWSE/references/attributes/) namespace.

**Returns**:

* `result` (number[])

***

### `blocked`

The blocked state of the object.

**Returns**:

* `result` (boolean)

***

### `deleted`

*Read-only*. The deleted state of the object.

**Returns**:

* `result` (boolean)

***

### `disabled`

*Read-only*. The disabled state of the object.

**Returns**:

* `result` (boolean)

***

### `id`

*Read-only*. The unique identifier for the object.

**Returns**:

* `result` (string)

***

### `modified`

The modification state of the object since the last save.

**Returns**:

* `result` (boolean)

***

### `name`

The faction's player-facing name.

**Returns**:

* `result` (string)

***

### `objectFlags`

*Read-only*. The raw flags of the object.

**Returns**:

* `result` (number)

***

### `objectType`

*Read-only*. The type of object. Maps to values in [`tes3.objectType`](https://mwse.github.io/MWSE/references/object-types/).

**Returns**:

* `result` (number)

***

### `persistent`

The persistent flag of the object.

**Returns**:

* `result` (boolean)

***

### `playerExpelled`

The player's expelled state in the faction.

**Returns**:

* `result` (boolean)

***

### `playerJoined`

The player's join state for the faction.

**Returns**:

* `result` (boolean)

***

### `playerRank`

The player's current rank in the faction.

**Returns**:

* `result` (number)

***

### `playerReputation`

The player's current reputation in the faction.

**Returns**:

* `result` (number)

***

### `ranks`

*Read-only*. An array-style table holding the ten related [`tes3factionRank`](https://mwse.github.io/MWSE/types/tes3factionRank/)s.

**Returns**:

* `result` ([tes3factionRank](../../types/tes3factionRank)[])

***

### `reactions`

*Read-only*. A collection of [`tes3factionReaction`](https://mwse.github.io/MWSE/types/tes3factionReaction/)s.

**Returns**:

* `result` ([tes3factionReaction](../../types/tes3factionReaction)[])

***

### `skills`

*Read-only*. An array-style table holding the seven skills that govern advancement. Maps to values in [`tes3.skill`](https://mwse.github.io/MWSE/references/skills/) namespace.

**Returns**:

* `result` (number[])

***

### `sourceless`

The soruceless flag of the object.

**Returns**:

* `result` (boolean)

***

### `sourceMod`

*Read-only*. The filename of the mod that owns this object.

**Returns**:

* `result` (string)

***

### `supportsLuaData`

If true, references of this object can store temporary or persistent lua data.

**Returns**:

* `result` (boolean)

***

## Methods

### `__tojson`

Serializes the object to json.

```lua
local string = myObject:__tojson()
```

**Returns**:

* `string` (string)

***

### `getLowestJoinedReaction`

For this faction, this function finds the worst reaction for another faction that the player has joined. It returns that reaction and its associated faction, or `nil` for both values if the no relationship is applicable.

```lua
local reaction, faction = myObject:getLowestJoinedReaction()
```

**Returns**:

* `reaction` (number, nil): The reaction, if any, that is worst for the player.
* `faction` ([tes3faction](../../types/tes3faction), nil): The faction association, if any, that is worst for the player.

***

### `getRankName`

This function fetches the player-facing name of a rank in the faction.

```lua
local result = myObject:getRankName(rank)
```

**Parameters**:

* `rank` (number): A rank number in range [0, 9] inclusive.

**Returns**:

* `result` (string)

***

### `getReactionWithFaction`

Returns a reaction value for another faction, or `nil` if no relationship exists between the two factions.

```lua
local reaction = myObject:getReactionWithFaction(faction)
```

**Parameters**:

* `faction` ([tes3faction](../../types/tes3faction)): Another faction to get a reaction for.

**Returns**:

* `reaction` (number, nil): The reaction, if any, with the other faction.

***

### `setRankName`

This function changes the player-facing name of a given rank in the faction.

```lua
myObject:setRankName(rank, name)
```

**Parameters**:

* `rank` (number): A rank number in range [0, 9] inclusive.
* `name` (string): A new name to set.

***

