return {
	type = "method",
	description = [[Unequips one or more items from the actor.]],
	arguments = {{
		name = "params",
		type = "table",
		tableParams = {
			{ name = "item", type = "tes3item|string", optional = true, description = "The item to unequip." },
			{ name = "type", type = "number", optional = true, description = "The item type to unequip. Only used if no other parameter is provided. Only values pertaining to equipment from [`tes3.objectType`](https://mwse.github.io/MWSE/references/object-types/) can be passed here." },
			{ name = "armorSlot", type = "number", optional = true, description = "The armor slot to unequip. Maps to values in [`tes3.armorSlot`](https://mwse.github.io/MWSE/references/armor-slots/) namespace." },
			{ name = "clothingSlot", type = "number", optional = true, description = "The clothing slot to unequip. Maps to values in [`tes3.clothingSlot`](https://mwse.github.io/MWSE/references/clothing-slots/) namespace" },
		}
	}},
	returns = "itemUnequipped",
	valuetype = "boolean",
}