--- @meta
--- @diagnostic disable:undefined-doc-name

--- A loaded MGE shader.
--- @class mgeShaderHandle
--- @field enabled boolean The enabled state of the shader.
--- @field name string The shader name.
--- @field orderPriority number The calculated ordering priority value of the shader, that allows auto-sorting of shaders. Changing this value will re-sort the shader list.
--- @field variables table Lists the shader's editable variables. The result table has the variable names as keys, and the variable types as values. To get and set the actual variable, use the expression `shaderHandle.<variableName>`.
--- 	
--- 	Variable types are:
--- 	'b' boolean
--- 	'i' integer
--- 	'f' float
--- 	's' string
--- 	'a' float array
--- 	'2' vec2
--- 	'3' vec3
--- 	'4' vec4
--- 	'm' matrix
mgeShaderHandle = {}

--- Reloads and recompiles the shader. Returns if the reload was successful.
--- @return boolean result No description yet available.
function mgeShaderHandle:reload() end

