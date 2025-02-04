--- @meta
--- @diagnostic disable:undefined-doc-name

--- Convenience access to frame timer functions. This is the same as passing `type = timer.real` to any of the functions from timer API.
--- @class timer.framelib
timer.frame = {}

--- Creates a timer that will finish the next frame.
--- @param callback function The callback function that will execute when the timer expires.
--- @return mwseTimer timer No description yet available.
function timer.frame.delayOneFrame(callback) end

