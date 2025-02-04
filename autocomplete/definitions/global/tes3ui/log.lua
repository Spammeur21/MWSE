return {
	type = "function",
	description = [[Logs a message to the console. The message accepts formatting and additional parameters matching string.format's usage.]],
	arguments = {
		{ name = "message", type = "string" },
		{ name = "formatValues", type = "variadic", optional = true }
	},
	examples = {
		["logPlayerSkillTypes"] = {
			title = "Print the type of each of the player's skills to the console"
		}
	}
}