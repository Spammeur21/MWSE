return {
	type = "function",
	description = [[Casts a spell from a given reference to a target reference. The caster doesn't need to know the spell. By default, an actor casting will stop and perform its cast animation, but the 'instant' flag can start the cast instantly, and allow more control over the spell.]],
	arguments = {{
		name = "params",
		type = "table",
		tableParams = {
			{ name = "reference", type = "tes3reference|tes3mobileActor|string", description = "The caster reference." },
			{ name = "target", type = "tes3reference|tes3mobileActor|string", description = "The target reference." },
			{ name = "spell", type = "tes3spell|string", description = "The spell the caster uses." },
			{ name = "instant", type = "boolean", default = false, description = "When true, the spell is cast instantly. No animation is performed." },
			{ name = "alwaysSucceeds", type = "boolean", default = true, description = "When true, the spell cannot fail and does not consume magicka. When false, it is cast using the actor's spell skill and requires and takes enough magicka to cast. Only applies when 'instant' is true." },
			{ name = "bypassResistances", type = "boolean", default = false, description = "The spell will bypass the target's resistances. Only applies when 'instant' is true." },
		},
	}},
	returns = {{ name = "executed", type = "boolean" }},
}
