--- @meta
--- @diagnostic disable:undefined-doc-name

--- Works in conjuction with mobile AI to perform idle, movement, and attack animations. Holds data on the status of the current and next desired animation states for the different body sections that can be animated.
--- @class tes3actorAnimationController
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. The mobile actor that this controller is responsible for.
--- @field weaponSpeed number *Read-only*. The animation speed scaling of the weapon animations. This includes all weapon related idle, attack, and ready/unready animations. This value is reset at the starting frame of each weapon strike, normally equal to the the weapon speed. Therefore if you use this it should be changed after every strike, and reset after. Ready/unready actions do not change speed, but are affected by speed.
--- 
--- Use by getting the animation controller from the mobile. e.g. `mobile.animationController.weaponSpeed = 0.5`
tes3actorAnimationController = {}

--- Calculates how much an attack is currently being charged. Returns a value ranging from `0.0` to `1.0`. A value of `1.0` indicates that the attack is fully charged. Will always return `0.0` when not currently charging an attack.
--- @return number result No description yet available.
function tes3actorAnimationController:calculateAttackSwing() end

