return {
	type = "function",
	description = [[Creates a new 4 by 4 matrix from 4 provided vectors, 16 numbers or creates an empty matrix if nothing is provided.]],
	arguments = {
		{ name = "x0", type = "number", optional = true },
		{ name = "y0", type = "number", optional = true },
		{ name = "z0", type = "number", optional = true },
		{ name = "w0", type = "number", optional = true },
		{ name = "x1", type = "number", optional = true },
		{ name = "y1", type = "number", optional = true },
		{ name = "z1", type = "number", optional = true },
		{ name = "w1", type = "number", optional = true },
		{ name = "x2", type = "number", optional = true },
		{ name = "y2", type = "number", optional = true },
		{ name = "z2", type = "number", optional = true },
		{ name = "w2", type = "number", optional = true },
		{ name = "x3", type = "number", optional = true },
		{ name = "y3", type = "number", optional = true },
		{ name = "z3", type = "number", optional = true },
		{ name = "w3", type = "number", optional = true },
		{ name = "x", type = "tes3vector4", optional = true },
		{ name = "y", type = "tes3vector4", optional = true },
		{ name = "z", type = "tes3vector4", optional = true },
		{ name = "w", type = "tes3vector4", optional = true },
	},
	returns = {{ name = "matrix", type = "tes3matrix44" }},
}