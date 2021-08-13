--- @meta

--- This event is called when the player is about to start resting. The hour and count of creatures can be modified, or disabled. Blocking this event blocks any interrupting spawn.
--- @class calcRestInterruptEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field count number The number of creatures interrupting rest. Set to 0 to prevent a spawn.
--- @field hour number The hour of rest remaining that the rest will be interrupted on.
--- @field resting boolean If true, the player is attempting to rest, as opposed to wait.
--- @field waiting boolean If true, the player is attempting to wait, as opposed to rest.
