--- @meta
--- @diagnostic disable:undefined-doc-name

--- A clothing game object.
--- @class tes3clothing : tes3item, tes3physicalObject, tes3object, tes3baseObject
--- @field enchantCapacity number The object's enchantment capacity.
--- @field enchantment tes3enchantment The enchantment used by the object.
--- @field icon string The path to the object's icon.
--- @field isLeftPart boolean Determines if the armor is the left part of a pair.
--- @field mesh string The path to the object's mesh.
--- @field name string The player-facing name for the object.
--- @field parts tes3wearablePart[] An array-style table of the [`tes3wearablePart`](https://mwse.github.io/MWSE/types/tes3wearablePart/) data on the object.
--- @field script tes3script The script that runs on the object.
--- @field slot number The slot used by the clothing object. Maps to values in [`tes3.clothingSlot`](https://mwse.github.io/MWSE/references/clothing-slots/) namespace.
--- @field slotName string The name of the slot used by the clothing object.
--- @field value number The value of the object. For this object type, its maximum value is 65535. Larger numbers will overflow.
--- @field weight number The weight of the object.
tes3clothing = {}

--- Creates a copy of this object.
--- @param params tes3clothing.createCopy.params This table accepts the following values:
--- 
--- `id`: string? — *Optional*. The new object's ID. If one is not provided, a randomly generated one will be used.
--- 
--- `addToObjectList`: boolean? — *Default*: `true`. If true, the object will be added to the data handler. If this is false, the new object may not have a randomly generated ID. Do not use this without knowing the implications.
--- 
--- `sourceless`: boolean? — *Default*: `false`. If true, the object will be made sourceless, and will not be serialized to the save game. If the object is copied outside of a save game, the object will **always** be sourceless.
--- @return tes3clothing newObject No description yet available.
function tes3clothing:createCopy(params) end

---Table parameter definitions for `tes3clothing.createCopy`.
--- @class tes3clothing.createCopy.params
--- @field id string? *Optional*. The new object's ID. If one is not provided, a randomly generated one will be used.
--- @field addToObjectList boolean? *Default*: `true`. If true, the object will be added to the data handler. If this is false, the new object may not have a randomly generated ID. Do not use this without knowing the implications.
--- @field sourceless boolean? *Default*: `false`. If true, the object will be made sourceless, and will not be serialized to the save game. If the object is copied outside of a save game, the object will **always** be sourceless.

