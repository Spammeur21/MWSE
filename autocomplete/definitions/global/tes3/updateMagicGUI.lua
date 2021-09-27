return {
	type = "function",
	description = [[Forces the GUI to update magic-relevant elements for a given reference. This can be used after many calls to magic- or magic item-manipulating functions while passing updateGUI as false to resync inventory tiles, container weights, and companion data.]],
	arguments = {{
		name = "params",
		type = "table",
		tableParams = {
			{ name = "reference", type = "tes3reference|tes3mobileActor|string", description = "The reference to update GUI elements for." },
		},
	}},
}