--- @meta

--- The damagedHandToHand event triggers after an actor takes fatigue damage from hand-to-hand combat. It does not trigger on health damage, but the 'damaged' event will.
--- @class damagedHandToHandEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field attacker tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer The mobile actor dealing the damage. Can be nil.
--- @field attackerReference tes3reference The attacker mobile's associated reference. Can be nil.
--- @field fatigueDamage number The amount of fatigue damage done.
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer The mobile actor that took fatigue damage.
--- @field reference tes3reference The mobile’s associated reference.
