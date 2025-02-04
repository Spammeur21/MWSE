--- @meta
--- @diagnostic disable:undefined-doc-name

--- This event is invoked when the player selects a new reference with the console, or unselects a reference.
--- @class consoleReferenceChangedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field reference tes3reference|nil *Read-only*. The newly selected reference, or nil if nothing is now selected.
