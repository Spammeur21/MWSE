# tes3uiTextInput

A structure containing properties specific to text inputs.

This type inherits the following: [tes3uiWidget](../../types/tes3uiWidget)
## Properties

### `element`

Access back to the element this widget interface is for.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `eraseOnFirstKey`

*Default*: `true`. If `true`, clears the initial value if the first keypress is not an edit action.

**Returns**:

* `result` (boolean)

***

### `lengthLimit`

The character limit. Inputting additional characters will not be possible if this limit has been reached. Setting this to `nil` will remove the limit.

**Returns**:

* `result` (number)

***

