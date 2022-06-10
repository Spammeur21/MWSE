--- @meta
--- @diagnostic disable:undefined-doc-name

--- A structure containing properties specific to cycle buttons.
--- @class tes3uiCycleButton : tes3uiWidget
--- @field index number The current index of the widget. If this is set, the text will be updated accordingly.
--- @field options tes3uiCycleButtonOption[] The options available to the cycle button. Setting this value will reset the active index to 1.
--- @field text string The current text of the button. This will change every time the index changes.
--- @field value any The value associated with the current index. Setting this property will search for an option that has the given value, and change the active index to that option's. If the value does not exist in the available options, it will throw an error.
tes3uiCycleButton = {}

--- Adds a new option to the cycle button.
--- @param option tes3uiCycleButtonOption The option to add to the last position.
function tes3uiCycleButton:addOption(option) end

--- Gets the index used by a particular value.
--- @param value any The value to search for.
--- @return number index The found index matching the value.
function tes3uiCycleButton:getIndexForValue(value) end

--- Gets the text element to use.
--- @return number index The found index matching the value.
function tes3uiCycleButton:getTextElement() end

--- Cycles the button to the next option.
function tes3uiCycleButton:next() end

--- Cycles the button to the previous option.
function tes3uiCycleButton:previous() end

