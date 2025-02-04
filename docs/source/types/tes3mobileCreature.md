# tes3mobileCreature

A mobile object for a creature.

This type inherits the following: [tes3mobileActor](../../types/tes3mobileActor), [tes3mobileObject](../../types/tes3mobileObject)
## Properties

### `actionBeforeCombat`

*Read-only*. Action data stored before the actor entered combat.

**Returns**:

* `result` ([tes3actionData](../../types/tes3actionData))

***

### `actionData`

*Read-only*. Current action data. Pre-combat action data is stored in the `actionBeforeCombat` property.

**Returns**:

* `result` ([tes3actionData](../../types/tes3actionData))

***

### `activeAI`

Friendly access to the actor's flag that controls if AI is active.

**Returns**:

* `result` (boolean)

***

### `activeMagicEffectList`

*Read-only*. The active magic effects on the actor, from which all others can be accessed. A table with [`tes3activeMagicEffect`](https://mwse.github.io/MWSE/types/tes3activeMagicEffect/) items.

**Returns**:

* `result` ([tes3activeMagicEffect](../../types/tes3activeMagicEffect)[])

***

### `actorType`

*Read-only*. The type of the mobile actor. Maps to values in [`tes3.actorType`](https://mwse.github.io/MWSE/references/actor-types/) namespace.

**Returns**:

* `result` (number)

***

### `agility`

*Read-only*. Direct access to the actor's agility attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `aiPlanner`

*Read-only*. Access to the mobile's AI planner and AI package information.

**Returns**:

* `result` ([tes3aiPlanner](../../types/tes3aiPlanner))

***

### `alarm`

The actor's alarm AI value.

**Returns**:

* `result` (number)

***

### `animationController`

*Read-only*. No description yet available.

**Returns**:

* `result` ([tes3actorAnimationController](../../types/tes3actorAnimationController))

***

### `armorRating`

*Read-only*. The actor's current armour rating, taking equipment condition into account. Armour mitigation can be automatically applied to damage by using the `applyDamage` function.

Armour mitigation calculation:
x = damage / (damage + target.armorRating)
damage *= max(fCombatArmorMinMult, x)
if damage < 1 then damage = 1 end

**Returns**:

* `result` (number)

***

### `attackBonus`

Direct access to the actor's attack bonus effect attribute.

**Returns**:

* `result` (number)

***

### `attacked`

*Read-only*. Friendly access to the actor's flag that controls if the actor has been attacked.

**Returns**:

* `result` (boolean)

***

### `attributes`

*Read-only*. Access to a table of 8 [`tes3statistic`](https://mwse.github.io/MWSE/types/tes3statistic/) objects for the actor's attributes.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic)[])

***

### `barterGold`

The current amount of gold that the actor has access to for bartering.

**Returns**:

* `result` (number)

***

### `blind`

Direct access to the actor's blind effect attribute.

**Returns**:

* `result` (number)

***

### `boundSize`

A vector that shows the size of the bounding box in each direction. Note that this is a convenience feature, and delivers the `x` and `y` values from `boundSize2D` with the `z` value of the mobile's `height`. Editing the values of the returned vector will not change the values that they came from, though setting the property itself will work.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `boundSize2D`

A vector that shows the size of the bounding box in X and Y directions. `boundSize` is a convenience property that exposes the bounding in 3 dimensions.

**Returns**:

* `result` ([tes3vector2](../../types/tes3vector2))

***

### `canAct`

*Read-only*. If true, the actor is able to freely execute actions like attacking or casting magic. This is equal to checking if the actor is not dead, knocked down, stunned, paralyzed, drawing/sheathing their weapon, attacking, casting magic or using a lockpick or probe.

**Returns**:

* `result` (boolean)

***

### `cell`

*Read-only*. Fetches the cell that the actor is in.

**Returns**:

* `result` ([tes3cell](../../types/tes3cell))

***

### `cellX`

*Read-only*. The X grid coordinate of the cell the mobile is in.

**Returns**:

* `result` (number)

***

### `cellY`

*Read-only*. The Y grid coordinate of the cell the mobile is in.

**Returns**:

* `result` (number)

***

### `chameleon`

Direct access to the actor's chameleon effect attribute.

**Returns**:

* `result` (number)

***

### `collidingReference`

*Read-only*. The reference that the mobile has collided with this frame.

**Returns**:

* `result` ([tes3reference](../../types/tes3reference))

***

### `combat`

*Read-only*. Direct access to the creature's combat statistic. This is a creature-specific generalization of skills, where this statistic is used in place of all combat skills. To get an individual skill value by skill ID, see the `getSkillValue` or `getSkillStatistic` methods.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `combatSession`

*Read-only*. Combat session data. This exists while the actor is in combat to provide memory for AI combat decisions.

**Returns**:

* `result` ([tes3combatSession](../../types/tes3combatSession))

***

### `corpseHourstamp`

This is the time measured in hours from the beginning of the game when the actor died. Returns a UNIX-style timestamp based on in-world simulation time since the start of the era. For living actors this field has value a of `0`.

**Returns**:

* `result` (number)

***

### `currentEnchantedItem`

*Read-only*. The currently equipped enchanted item that the actor will use.

**Returns**:

* `result` ([tes3equipmentStack](../../types/tes3equipmentStack))

***

### `currentSpell`

*Read-only*. The currently equipped spell that the actor will use.

**Returns**:

* `result` ([tes3spell](../../types/tes3spell))

***

### `effectAttributes`

*Read-only*. Access to a table of 24 numbers for the actor's effect attributes. In order those are: `attackBonus`, `sanctuary`, `resistMagicka`, `resistFire`, `resistFrost`, `resistShock`, `resistCommonDisease`, `resistBlightDisease`, `resistCorprus`, `resistPoison`, `resistParalysis`, `chameleon`, `resistNormalWeapons`, `waterBreathing`, `waterWalking`, `swiftSwim`, `jump`, `levitate`, `shield`, `sound`, `silence`, `blind`, `paralyze`, and `invisibility`. Each of those can be accessed individually. For example, `tes3mobileActor.chameleon`.

**Returns**:

* `result` (number[])

***

### `encumbrance`

*Read-only*. Access to the actor's encumbrance statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `endurance`

*Read-only*. Direct access to the actor's endurance attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `facing`

*Read-only*. The facing of the actor, in radians.

**Returns**:

* `result` (number)

***

### `fatigue`

*Read-only*. Access to the actor's fatigue statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `fight`

The actor's fight AI value.

**Returns**:

* `result` (number)

***

### `flags`

Access to the root mobile object flags, represented as an integer. Should not be accessed directly.

**Returns**:

* `result` (number)

***

### `flee`

The actor's flee AI value.

**Returns**:

* `result` (number)

***

### `flySpeed`

*Read-only*. The calculated fly movement speed.

**Returns**:

* `result` (number)

***

### `friendlyActors`

*Read-only*. A collection of other `tes3mobileActor`s that this actor considers friendly.

**Returns**:

* `result` ([tes3iterator](../../types/tes3iterator))

***

### `greetDuration`

No description yet available.

**Returns**:

* `result` (number)

***

### `greetTimer`

*Read-only*. No description yet available.

**Returns**:

* `result` (number)

***

### `hasFreeAction`

*Read-only*. If true, the actor isn't knocked down or stunned.

**Returns**:

* `result` (boolean)

***

### `health`

*Read-only*. Access to the actor's health statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `height`

The height of the mobile above the ground.

**Returns**:

* `result` (number)

***

### `hello`

The actor's hello AI value.

**Returns**:

* `result` (number)

***

### `holdBreathTime`

This is the time the actor can stay underwater without taking drowning damage, measured in seconds. It's starting value is `fHoldBreathTime`(GMST) seconds by default. Once the actor is underwater, this value is decreasing based on the time passed while underwater. The actor will start taking drowning damage once this time is below 0. During drowning this time will have more and more negative values based on the duration of the drowning. Changing this allows manipulating for how long the actor can stay underwater without drowning. Note that player's Breath HUD element won't show values larger than `fHoldBreathTime`.

**Returns**:

* `result` (number)

***

### `hostileActors`

*Read-only*. A collection of other `tes3mobileActor`s that this actor considers hostile.

**Returns**:

* `result` ([tes3iterator](../../types/tes3iterator))

***

### `idleAnim`

*Read-only*. Friendly access to the actor's flag that controls if the actor is using their idle animation.

**Returns**:

* `result` (boolean)

***

### `impulseVelocity`

A vector that represents the 3D acceleration of the object.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `inCombat`

*Read-only*. Friendly access to the actor's flag that controls if the actor is in combat.

**Returns**:

* `result` (boolean)

***

### `intelligence`

*Read-only*. Direct access to the actor's intelligence attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `invisibility`

Direct access to the actor's invisibility effect attribute.

**Returns**:

* `result` (number)

***

### `isAttackingOrCasting`

*Read-only*. If true, the actor is attacking, casting magic or using a lockpick or probe.

**Returns**:

* `result` (boolean)

***

### `isCrittable`

*Read-only*. Friendly access to the actor's flag that controls if the actor can be critically hit.

**Returns**:

* `result` (boolean)

***

### `isDead`

*Read-only*. True if the actor is dead.

**Returns**:

* `result` (boolean)

***

### `isDiseased`

*Read-only*. True if the actor is has a disease effect. This counts normal, blight, and corprus effects.

**Returns**:

* `result` (boolean)

***

### `isFalling`

Direct access to the actor's current movement flags, showing if the actor is falling. This is when the actor is falling without having jumped, e.g. if they walked off a ledge.

**Returns**:

* `result` (boolean)

***

### `isFlying`

Direct access to the actor's current movement flags, showing if the actor is flying.

**Returns**:

* `result` (boolean)

***

### `isJumping`

Direct access to the actor's current movement flags, showing if the actor is jumping.

**Returns**:

* `result` (boolean)

***

### `isMovingBack`

Direct access to the actor's current movement flags, showing if the actor is moving backwards.

**Returns**:

* `result` (boolean)

***

### `isMovingForward`

Direct access to the actor's current movement flags, showing if the actor is moving forwards.

**Returns**:

* `result` (boolean)

***

### `isMovingLeft`

Direct access to the actor's current movement flags, showing if the actor is moving left.

**Returns**:

* `result` (boolean)

***

### `isMovingRight`

Direct access to the actor's current movement flags, showing if the actor is moving right.

**Returns**:

* `result` (boolean)

***

### `isParalyzed`

*Read-only*. If true, the actor is affected by the magic effect paralyze.

**Returns**:

* `result` (boolean)

***

### `isPlayerDetected`

Direct access to the actor's flag showing the player was detected on the last detection check.

**Returns**:

* `result` (boolean)

***

### `isPlayerHidden`

Direct access to the actor's flag showing the player was hidden on the last detection check.

**Returns**:

* `result` (boolean)

***

### `isReadyingWeapon`

*Read-only*. If true, the actor is drawing or sheathing their weapon.

**Returns**:

* `result` (boolean)

***

### `isRunning`

Direct access to the actor's current movement flags, showing if the actor is running.

**Returns**:

* `result` (boolean)

***

### `isSneaking`

Direct access to the actor's current movement flags, showing if the actor is sneaking.

**Returns**:

* `result` (boolean)

***

### `isSwimming`

Direct access to the actor's current movement flags, showing if the actor is swimming.

**Returns**:

* `result` (boolean)

***

### `isTurningLeft`

Direct access to the actor's current movement flags, showing if the actor is turning left.

**Returns**:

* `result` (boolean)

***

### `isTurningRight`

Direct access to the actor's current movement flags, showing if the actor is turning right.

**Returns**:

* `result` (boolean)

***

### `isWalking`

Direct access to the actor's current movement flags, showing if the actor is walking.

**Returns**:

* `result` (boolean)

***

### `jump`

Direct access to the actor's jump effect attribute.

**Returns**:

* `result` (number)

***

### `lastGroundZ`

This has a large negative value if the actor is on the ground. When the actor jumps, this will have a positive value. During `jump` event this value is still negative. A split second after, it will have the value of the `.z` coordinate when the actor was on the ground. Beware that this value changes after some amount of time while the actors is in the air.

**Returns**:

* `result` (number)

***

### `levitate`

Direct access to the actor's levitate effect attribute.

**Returns**:

* `result` (number)

***

### `luck`

*Read-only*. Direct access to the actor's luck attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `magic`

*Read-only*. Direct access to the creature's magic statistic. This is a creature-specific generalization of skills, where this statistic is used in place of all magic skills. To get an individual skill value by skill ID, see the `getSkillValue` or `getSkillStatistic` methods.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `magicka`

*Read-only*. Access to the actor's magicka statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `magickaMultiplier`

*Read-only*. Access to the actor's magicka multiplier statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `mobToMobCollision`

Allows modifying if this actor will collide with other actors. When `true` (default), the actor cannot move through other actors. When `false`, the actor is allowed to move through other actors, and other actors can move through it.

May be useful when free movement is required in crowded situations, or to temporarily let the player move past an actor.

**Returns**:

* `result` (boolean)

***

### `movementCollision`

Controls if the mobile has movement collision active. When false, the mobile can move through any object, but can still block other mobiles, and can still be hit in combat. Actors will still follow pathgrids, ramps and stairs when navigating.

**Returns**:

* `result` (boolean)

***

### `movementFlags`

Access to the root mobile object movement flags, represented as an integer. Should not be accessed directly.

**Returns**:

* `result` (number)

***

### `moveSpeed`

*Read-only*. The calculated base movement speed.

**Returns**:

* `result` (number)

***

### `nextActionWeight`

*Read-only*. No description yet available.

**Returns**:

* `result` (number)

***

### `object`

*Read-only*. The actor object that maps to this mobile.

**Returns**:

* `result` ([tes3creatureInstance](../../types/tes3creatureInstance))

***

### `objectType`

*Read-only*. The type of mobile object. Maps to values in [`tes3.objectType`](https://mwse.github.io/MWSE/references/object-types/) namespace.

**Returns**:

* `result` (number)

***

### `paralyze`

Direct access to the actor's paralyze effect attribute.

**Returns**:

* `result` (number)

***

### `personality`

*Read-only*. Direct access to the actor's personality attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `playerDistance`

The distance to the player. Updated every frame when the mobile is in an active cell.

**Returns**:

* `result` (number)

***

### `position`

A vector that represents the 3D position of the object.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `prevMovementFlags`

Access to the root mobile object movement flags from the previous frame, represented as an integer. Should not be accessed directly.

**Returns**:

* `result` (number)

***

### `readiedAmmo`

The currently equipped ammo.

**Returns**:

* `result` ([tes3equipmentStack](../../types/tes3equipmentStack))

***

### `readiedAmmoCount`

The number of ammo equipped for the readied ammo.

**Returns**:

* `result` (number)

***

### `readiedShield`

The currently equipped shield.

**Returns**:

* `result` ([tes3equipmentStack](../../types/tes3equipmentStack))

***

### `readiedWeapon`

The currently equipped weapon.

**Returns**:

* `result` ([tes3equipmentStack](../../types/tes3equipmentStack))

***

### `reference`

*Read-only*. Access to the reference object for the mobile, if any.

**Returns**:

* `result` ([tes3reference](../../types/tes3reference))

***

### `resistBlightDisease`

Direct access to the actor's blight disease resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistCommonDisease`

Direct access to the actor's common disease resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistCorprus`

Direct access to the actor's corprus disease resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistFire`

Direct access to the actor's fire resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistFrost`

Direct access to the actor's frost resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistMagicka`

Direct access to the actor's magicka resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistNormalWeapons`

Direct access to the actor's normal weapon resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistParalysis`

Direct access to the actor's paralysis resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistPoison`

Direct access to the actor's poison resistance effect attribute.

**Returns**:

* `result` (number)

***

### `resistShock`

Direct access to the actor's shock resistance effect attribute.

**Returns**:

* `result` (number)

***

### `runSpeed`

*Read-only*. The calculated run movement speed.

**Returns**:

* `result` (number)

***

### `sanctuary`

Direct access to the actor's sanctuary effect attribute.

**Returns**:

* `result` (number)

***

### `scanInterval`

*Read-only*. No description yet available.

**Returns**:

* `result` (number)

***

### `scanTimer`

*Read-only*. No description yet available.

**Returns**:

* `result` (number)

***

### `shield`

Direct access to the actor's shield effect attribute.

**Returns**:

* `result` (number)

***

### `silence`

Direct access to the actor's silence effect attribute.

**Returns**:

* `result` (number)

***

### `skills`

*Read-only*. An array-style table with access to the three creature skill statistics.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic)[])

***

### `sound`

Direct access to the actor's sound effect attribute.

**Returns**:

* `result` (number)

***

### `speed`

*Read-only*. Direct access to the actor's speed attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `spellReadied`

*Read-only*. Friendly access to the actor's flag that controls if the actor has a spell readied.

**Returns**:

* `result` (boolean)

***

### `stealth`

*Read-only*. Direct access to the creature's stealth statistic. This is a creature-specific generalization of skills, where this statistic is used in place of all stealth skills. To get an individual skill value by skill ID, see the `getSkillValue` or `getSkillStatistic` methods.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `strength`

*Read-only*. Direct access to the actor's strength attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

### `swiftSwim`

Direct access to the actor's swift swim effect attribute.

**Returns**:

* `result` (number)

***

### `swimRunSpeed`

*Read-only*. The calculated swim movement speed while running.

**Returns**:

* `result` (number)

***

### `swimSpeed`

*Read-only*. The calculated swim movement speed.

**Returns**:

* `result` (number)

***

### `talkedTo`

Direct access to the actor's flag that shows it was recently talked to.

**Returns**:

* `result` (boolean)

***

### `torchSlot`

The currently equipped light.

**Returns**:

* `result` ([tes3equipmentStack](../../types/tes3equipmentStack))

***

### `underwater`

*Read-only*. Friendly access to the actor's flag that controls if the actor is under water.

**Returns**:

* `result` (boolean)

***

### `velocity`

A vector that represents the 3D velocity of the object.

**Returns**:

* `result` ([tes3vector3](../../types/tes3vector3))

***

### `walkSpeed`

*Read-only*. The calculated walk movement speed.

**Returns**:

* `result` (number)

***

### `waterBreathing`

Direct access to the actor's water breathing effect attribute.

**Returns**:

* `result` (number)

***

### `waterWalking`

Direct access to the actor's water walking effect attribute.

**Returns**:

* `result` (number)

***

### `weaponDrawn`

*Read-only*. Friendly access to the actor's flag that shows if the weapon model is visible. When readying a weapon, there is a short period of time at the start of the animation, where the weapon is not visible yet. This flag will only be set after this initial stage is done. This flag is still set with hand-to-hand even though it doesn't use a model. Setting this to false while a weapon is drawn will normally cause the actor to play its weapon draw animation again.

**Returns**:

* `result` (boolean)

***

### `weaponReady`

A flag for if the actor has a weapon ready or being readied (visible and held in the hand). Setting it to true will cause the actor to take out their weapon. Setting it to false will cause the actor to put it away.

**Returns**:

* `result` (boolean)

***

### `werewolf`

*Read-only*. Friendly access to the actor's flag that controls if the actor in werewolf form.

**Returns**:

* `result` (boolean)

***

### `width`

*Read-only*. No description yet available.

**Returns**:

* `result` (number)

***

### `willpower`

*Read-only*. Direct access to the actor's willpower attribute statistic.

**Returns**:

* `result` ([tes3statistic](../../types/tes3statistic))

***

## Methods

### `applyDamage`

Damages the actor, with options to control mitigation and difficulty scaling. Invokes the [`damage`](https://mwse.github.io/MWSE/events/damage/) and [`damaged`](https://mwse.github.io/MWSE/events/damaged/) events, with `tes3.damageSource.script` source. Returns the actual damage done after armor mitigation and resistance, but before difficulty scaling.

```lua
local result = myObject:applyDamage({ damage = ..., applyArmor = ..., resistAttribute = ..., applyDifficulty = ..., playerAttack = ..., doNotChangeHealth = ... })
```

**Parameters**:

* `params` (table)
	* `damage` (number): The amount of damage to apply.
	* `applyArmor` (boolean): *Optional*. If armor should mitigate the incoming damage. If the player is the target, armor experience will be gained.
	* `resistAttribute` (number): *Optional*. The resistance attribute that is applied to the damage. It can reduce damage or exploit weakness. Uses values from [`tes3.effectAttribute`](https://mwse.github.io/MWSE/references/effect-attributes/) namespace.
	* `applyDifficulty` (boolean): *Optional*. If the game difficulty modifier should be applied. Must be used with the `playerAttack` argument to apply the correct modifier.
	* `playerAttack` (boolean): *Optional*. If the attack came from the player. Used for difficulty calculation.
	* `doNotChangeHealth` (boolean): *Optional*. If all armor effects except the health change should be applied. These include hit sounds, armor condition damage, and player experience gain from being hit.

**Returns**:

* `result` (number)

***

### `applyFatigueDamage`

Damages the actor's fatigue, with accompanying reaction from the reciever. Invokes the [`damageHandToHand`](https://mwse.github.io/MWSE/events/damageHandToHand/) and [`damagedHandToHand`](https://mwse.github.io/MWSE/events/damagedHandToHand/) events, with `tes3.damageSource.script` source. Returns the actual fatigue damage done.

```lua
local result = myObject:applyFatigueDamage(fatigueDamage, swing, alwaysPlayHitVoice)
```

**Parameters**:

* `fatigueDamage` (number): The amount of fatigue damage to apply.
* `swing` (number): *Optional*. The attack swing magnitude, range 0-1. Only modifies hit volume.
* `alwaysPlayHitVoice` (boolean): *Optional*. Always play the hit reaction voiceover.

**Returns**:

* `result` (number)

***

### `applyHealthDamage`

**Deprecated, please use [`applyDamage()`](https://mwse.github.io/MWSE/types/tes3mobileActor/#applydamage) instead.**

Damages the actor.

```lua
local result = myObject:applyHealthDamage(damage, isPlayerAttack, scaleWithDifficulty, doNotChangeHealth)
```

**Parameters**:

* `damage` (number): The amount of damage to apply.
* `isPlayerAttack` (boolean): Used to calculate difficulty scaling.
* `scaleWithDifficulty` (boolean): Apply difficulty scaling to the damage.
* `doNotChangeHealth` (boolean): Do all the audiovisual effects of damage without the health change.

**Returns**:

* `result` (boolean)

***

### `calcEffectiveDamage`

Calculates the damage that would be inflicted to an actor after armor and/or resistance. Returns the actual damage done after armor mitigation and resistance, but before difficulty scaling.

```lua
local result = myObject:calcEffectiveDamage({ damage = ..., applyArmor = ..., resistAttribute = ... })
```

**Parameters**:

* `params` (table)
	* `damage` (number): The amount of damage to apply.
	* `applyArmor` (boolean): *Optional*. If armor should mitigate the incoming damage.
	* `resistAttribute` (number): *Optional*. The resistance attribute that is applied to the damage. It can reduce damage or exploit weakness. Uses values from [`tes3.effectAttribute`](https://mwse.github.io/MWSE/references/effect-attributes/) namespace.

**Returns**:

* `result` (number)

***

### `equip`

Equips an item, optionally adding the item if needed. If the best match is already equipped, it does not perform an unequip-equip cycle, but does return `true`.

```lua
local itemEquipped = myObject:equip({ item = ..., itemData = ..., addItem = ..., selectBestCondition = ..., selectWorstCondition = ... })
```

**Parameters**:

* `params` (table)
	* `item` ([tes3item](../../types/tes3item), string): The item to equip.
	* `itemData` ([tes3itemData](../../types/tes3itemData)): *Optional*. The item data of the specific item to equip.
	* `addItem` (boolean): *Default*: `false`. If `true`, the item will be added to the actor's inventory if needed.
	* `selectBestCondition` (boolean): *Default*: `false`. If `true`, the item in the inventory with the best condition and best charge will be selected.
	* `selectWorstCondition` (boolean): *Default*: `false`. If `true`, the item in the inventory with the worst condition and worst charge will be selected. Can be useful for selecting tools.

**Returns**:

* `itemEquipped` (boolean)

***

### `equipMagic`

Equips a spell or enchantment, optionally equipping the enchanted item if needed. Returns `false` if the item could not be equipped.

```lua
local result = myObject:equipMagic({ source = ..., itemData = ..., equipItem = ..., updateGUI = ... })
```

**Parameters**:

* `params` (table)
	* `source` ([tes3spell](../../types/tes3spell), [tes3item](../../types/tes3item), string): The source of the magic to equip.

		Spells must be castable. Castable spells have a `castType` of `tes3.spellType.spell` or `tes3.spellType.power`. The actor is not required to know this spell.

		Items must have a castable enchantment. Castable enchantments have a `castType` of `tes3.enchantmentType.onUse` or `tes3.enchantmentType.castOnce`. The actor is not required to have this item in their inventory, unless `equipItem` is `true`.

	* `itemData` ([tes3itemData](../../types/tes3itemData)): *Optional*. Only valid if an item has been assigned to `source`. The item data of the specific item to equip.
	* `equipItem` (boolean): *Default*: `false`. Only valid if an item has been assigned to `source`. If `true`, the item assigned to `source` will be equipped. Requires the actor to have the item in their inventory. If `false`, `itemData` must not be nil.
	* `updateGUI` (boolean): *Default*: `true`. Only valid if this actor is the player. If `false`, the player GUI will not be updated to reflect the change to equipped magic.

**Returns**:

* `result` (boolean)

***

### `getActiveMagicEffects`

Fetches a filtered list of the active magic effects on the actor. Returns a table with [`tes3activeMagicEffect`](https://mwse.github.io/MWSE/types/tes3activeMagicEffect/) items.

```lua
local result = myObject:getActiveMagicEffects({ effect = ..., serial = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `effect` (number): *Optional*. The magic effect ID to search for.
	* `serial` (number): *Optional*. The magic instance serial to search for.

**Returns**:

* `result` ([tes3activeMagicEffect](../../types/tes3activeMagicEffect)[])

***

### `getBootsWeight`

*Read-only*. Gets the weight of the boots equipped on the actor, or 0 if no boots are equipped.

```lua
local result = myObject:getBootsWeight()
```

**Returns**:

* `result` (number)

***

### `getFatigueTerm`

Gets the fatigue-based skill scaling term used by many game mechanics, based on the actor's current and maximum fatigue. It is equal to `max(0, fFatigueBase - fFatigueMult * max(0, 1 - fatigue.current/fatigue.base))`

```lua
local result = myObject:getFatigueTerm()
```

**Returns**:

* `result` (number)

***

### `getPowerUseTimestamp`

Finds the timestamp a recharging power was used. Powers recharge 24 hours after this timestamp. The timestamp units are hours. The current time as a timestamp can be accessed at [`tes3.getSimulationTimestamp()`](https://mwse.github.io/MWSE/apis/tes3/#tes3getsimulationtimestamp).

```lua
local timestamp = myObject:getPowerUseTimestamp(power)
```

**Parameters**:

* `power` ([tes3spell](../../types/tes3spell)): The spell object for the power.

**Returns**:

* `timestamp` (number)

***

### `getSkillStatistic`

Fetches the statistic object of a skill with a given index. This is the way to access skills for any type of actor, as creatures have a limited version of the skill system. Note that creatures share a statistic between multiple skills (they only have combat, magic, and stealth stats), so many values will be the same.

```lua
local result = myObject:getSkillStatistic(skillId)
```

**Parameters**:

* `skillId` (number): The index of the skill statistic to fetch. Maps to values in [`tes3.skill`](https://mwse.github.io/MWSE/references/skills/) namespace.

**Returns**:

* `result` ([tes3statisticSkill](../../types/tes3statisticSkill))

***

### `getSkillValue`

Fetches the current value of a skill with a given index. This is the way to access skills for any type of actor, as creatures have a limited version of the skill system. Note that creatures share a statistic between multiple skills (they only have combat, magic, and stealth stats), so many values will be the same.

```lua
local result = myObject:getSkillValue(skillId)
```

**Parameters**:

* `skillId` (number): The index of the skill statistic's value to fetch. Maps to values in [`tes3.skill`](https://mwse.github.io/MWSE/references/skills/) namespace.

**Returns**:

* `result` (number)

***

### `getViewToActor`

No description yet available.

```lua
local result = myObject:getViewToActor()
```

**Returns**:

* `result` (number)

***

### `getViewToPoint`

No description yet available.

```lua
local result = myObject:getViewToPoint()
```

**Returns**:

* `result` (number)

***

### `getViewToPointWithFacing`

No description yet available.

```lua
local result = myObject:getViewToPointWithFacing()
```

**Returns**:

* `result` (number)

***

### `getWeaponSpeed`

Fetches the weapon speed of the actor's currently equipped weapon, or `1.0` if no weapon is equipped.

```lua
local result = myObject:getWeaponSpeed()
```

**Returns**:

* `result` (number)

***

### `hasUsedPower`

Check if a power has been used and is recharging.

```lua
local result = myObject:hasUsedPower(power)
```

**Parameters**:

* `power` ([tes3spell](../../types/tes3spell)): The spell object for the power.

**Returns**:

* `result` (boolean)

***

### `isAffectedByObject`

Determines if the actor is currently being affected by a given alchemy, enchantment, or spell.

```lua
local result = myObject:isAffectedByObject(object)
```

**Parameters**:

* `object` ([tes3alchemy](../../types/tes3alchemy), [tes3enchantment](../../types/tes3enchantment), [tes3spell](../../types/tes3spell)): The magic to check for.

**Returns**:

* `result` (boolean)

***

### `kill`

Kills the actor by setting its health to 0.

```lua
myObject:kill()
```

***

### `rechargePower`

Makes a power immediately available for casting again.

```lua
local result = myObject:rechargePower(power)
```

**Parameters**:

* `power` ([tes3spell](../../types/tes3spell)): The spell object for the power.

**Returns**:

* `result` (number)

***

### `setPowerUseTimestamp`

Sets the timestamp a recharging power was used. Powers recharge 24 hours after this timestamp.

```lua
myObject:setPowerUseTimestamp(power, timestamp)
```

**Parameters**:

* `power` ([tes3spell](../../types/tes3spell)): The spell object for the power.
* `timestamp` (number): The timestamp of the moment the power was casted, or 24 hours before the recharge point. The timestamp units are hours. The current time as a timestamp can be accessed at [`tes3.getSimulationTimestamp()`](https://mwse.github.io/MWSE/apis/tes3/#tes3getsimulationtimestamp).

***

### `startCombat`

Forces the actor into combat with another actor.

```lua
myObject:startCombat(target)
```

**Parameters**:

* `target` ([tes3mobileActor](../../types/tes3mobileActor))

***

### `startDialogue`

Starts dialogue with this actor for the player.

```lua
myObject:startDialogue()
```

***

### `stopCombat`

Ends combat for the actor.

```lua
myObject:stopCombat(force)
```

**Parameters**:

* `force` (boolean): If `false`, the function won't stop combat if the actor has other valid hostile targets.

***

### `unequip`

Unequips one or more items from the actor.

```lua
local itemUnequipped = myObject:unequip({ item = ..., type = ..., armorSlot = ..., clothingSlot = ... })
```

**Parameters**:

* `params` (table)
	* `item` ([tes3item](../../types/tes3item), string): *Optional*. The item to unequip.
	* `type` (number): *Optional*. The item type to unequip. Only used if no other parameter is provided. Only values pertaining to equipment from [`tes3.objectType`](https://mwse.github.io/MWSE/references/object-types/) can be passed here.
	* `armorSlot` (number): *Optional*. The armor slot to unequip. Maps to values in [`tes3.armorSlot`](https://mwse.github.io/MWSE/references/armor-slots/) namespace.
	* `clothingSlot` (number): *Optional*. The clothing slot to unequip. Maps to values in [`tes3.clothingSlot`](https://mwse.github.io/MWSE/references/clothing-slots/) namespace

**Returns**:

* `itemUnequipped` (boolean)

***

### `unequipMagic`

Unequips the currently equipped magic, optionally unequipping the enchanted item if needed.

```lua
myObject:unequipMagic({ unequipItem = ..., updateGUI = ... })
```

**Parameters**:

* `params` (table)
	* `unequipItem` (boolean): *Default*: `false`. Only valid if the currently equipped magic is from an equippable item enchantment. If `true`, the item containing the enchantment will be unequipped.
	* `updateGUI` (boolean): *Default*: `true`. Only valid if this actor is the player. If `false`, the player GUI will not be updated to reflect the change to equipped magic.

***

### `updateDerivedStatistics`

Updates statistics derived from attributes, which are magicka, fatigue, and encumbrance. Will also update the UI if used on the player. Normally handled automatically when you use `tes3.modStatistic()`.

```lua
myObject:updateDerivedStatistics(attribute)
```

**Parameters**:

* `attribute` ([tes3statistic](../../types/tes3statistic)): *Optional*. Limits the update to statistics derived from this attribute.  e.g. `mobile:updateDerivedStatistics(mobile.strength)`. If not present, all derived statistics will be updated.

***

### `updateOpacity`

Updates the actor's visual opacity. Used after modifying applied chameleon or invisiblity effects.

```lua
myObject:updateOpacity()
```

***

