--- @meta
--- @diagnostic disable:undefined-doc-name

--- This event is called when a weapon is readied, and pairs with the weaponUnreadied event. It can be used to reliably tell if a specific weapon is readied for attack. This does not necessarily mean that the animation state has changed for the first time.
--- @class weaponReadiedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field reference tes3reference *Read-only*. The reference associated with the change in readied weapon.
--- @field weaponStack tes3equipmentStack *Read-only*. The stack that contains the newly readied weapon and its associated data.
