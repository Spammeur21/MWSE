--- @meta
--- @diagnostic disable:undefined-doc-name

--- The mwse string library provides functions for interacting with mwscript string storage.
--- @class mwse.stringlib
mwse.string = {}

--- Creates a string in storage, and returns the numerical key for it.
--- 
--- If the string is already in storage, the previous key will be returned.
--- @param unknown string No description yet available.
--- @return number result No description yet available.
function mwse.string.create(unknown) end

--- Returns the numerical key for a given string in storage, or nil if the string isn't in storage.
--- @param unknown string No description yet available.
--- @return number? result *Optional*. No description yet available.
function mwse.string.get(unknown) end

