# tes3uiCycleButton

A structure containing properties specific to cycle buttons.

This type inherits the following: [tes3uiWidget](../../types/tes3uiWidget)
## Properties

### `element`

Access back to the element this widget interface is for.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `index`

The current index of the widget. If this is set, the text will be updated accordingly.

**Returns**:

* `result` (number)

***

### `options`

The options available to the cycle button. Setting this value will reset the active index to 1.

**Returns**:

* `result` ([tes3uiCycleButtonOption](../../types/tes3uiCycleButtonOption)[])

***

### `text`

The current text of the button. This will change every time the index changes.

**Returns**:

* `result` (string)

***

### `value`

The value associated with the current index. Setting this property will search for an option that has the given value, and change the active index to that option's. If the value does not exist in the available options, it will throw an error.

**Returns**:

* `result` (any)

***

## Methods

### `addOption`

Adds a new option to the cycle button.

```lua
myObject:addOption(option)
```

**Parameters**:

* `option` ([tes3uiCycleButtonOption](../../types/tes3uiCycleButtonOption)): The option to add to the last position.

***

### `getIndexForValue`

Gets the index used by a particular value.

```lua
local index = myObject:getIndexForValue(value)
```

**Parameters**:

* `value` (any): The value to search for.

**Returns**:

* `index` (number): The found index matching the value.

***

### `getTextElement`

Gets the text element to use.

```lua
local index = myObject:getTextElement()
```

**Returns**:

* `index` (number): The found index matching the value.

***

### `next`

Cycles the button to the next option.

```lua
myObject:next()
```

***

### `previous`

Cycles the button to the previous option.

```lua
myObject:previous()
```

***

