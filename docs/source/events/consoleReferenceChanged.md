# consoleReferenceChanged

This event is invoked when the player selects a new reference with the console, or unselects a reference.

```lua
--- @param e consoleReferenceChangedEventData
local function consoleReferenceChangedCallback(e)
end
event.register(tes3.event.consoleReferenceChanged, consoleReferenceChangedCallback)
```

!!! tip
	This event can be filtered based on the **`reference`** event data.

!!! tip
	An event can be claimed by setting `e.claim` to `true`, or by returning `false` from the callback. Claiming the event prevents any lower priority callbacks from being called.

## Event Data

* `reference` ([tes3reference](../../types/tes3reference), nil): *Read-only*. The newly selected reference, or nil if nothing is now selected.

