# tes3uiElement

A UI element, the main building block of the UI system. All elements are created with methods on a parent Element.  Elements are very configurable, and have many HTML-like layout features. All layout properties can be set to `nil` to reset them to the default value, which will deactivate any related layout mode.

Elements can have custom data attached using their `Property`_ key-value store, and specific Elements have specific `element.widget` accessors to control behaviour.

## Properties

### `absolutePosAlignX`

Sets element position to a point relative to the parent element. 0.0 = left/top content edge, 1.0 = right/bottom content edge. The positioning is absolute, which frees the element from the standard flow layout and allows overlapping elements.
	
	Bug note: Elements may not respond to widthProportional/heightProportional sizing after either of these properties are set. If you need to use both you should consider testing if it works first.

**Returns**:

* `result` (number)

***

### `absolutePosAlignY`

See absolutePosAlignX.

**Returns**:

* `result` (number)

***

### `alpha`

Element alpha colour, using range [0.0, 1.0]. Used to composite elements. If you wish to hide an element completely, use `disable` instead.

**Returns**:

* `result` (number)

***

### `autoHeight`

When `true`, automatically expands element dimensions to fit child elements. Dimensions are restricted by `minWidth`, `minHeight`, `maxWidth` and `maxHeight` properties.

**Returns**:

* `result` (boolean)

***

### `autoWidth`

When `true`, automatically expands element dimensions to fit child elements. Dimensions are restricted by `minWidth`, `minHeight`, `maxWidth` and `maxHeight` properties.

**Returns**:

* `result` (boolean)

***

### `borderAllSides`

Integer number. Border size in pixels. Border is the extra empty space around an element. Individual border sizes default to using the borderAllSides setting.

**Returns**:

* `result` (number)

***

### `borderBottom`

Integer number. Bottom border size in pixels. When this is set to `-1`, the borderAllSides setting is used for this side instead.

**Returns**:

* `result` (number)

***

### `borderLeft`

Integer number. Left border size in pixels. When this is set to `-1`, the borderAllSides setting is used for this side instead.

**Returns**:

* `result` (number)

***

### `borderRight`

Integer number. Left border size in pixels. When this is set to `-1`, the borderAllSides setting is used for this side instead.

**Returns**:

* `result` (number)

***

### `borderTop`

Integer number. Top border size in pixels. When this is set to `-1`, the borderAllSides setting is used for this side instead.

**Returns**:

* `result` (number)

***

### `childAlignX`

Sets alignment of child elements inside its parent, though it only works in specific conditions. 0.0 = left/top edge touches left/top edge of parent, 0.5 = centred, 1.0 = right/bottom edge touches right/bottom edge of parent. For negative values, there is a special case behaviour: all children but the last will be left-aligned/top-aligned, the last child will be right-aligned/bottom-aligned.
	
	Child alignment only works if the element has proportional sizing (using widthProportional/heightProportional) and all children use non-proportional sizing (widthProportional and heightProportional are nil).

**Returns**:

* `result` (number)

***

### `childAlignY`

See childAlignX.

**Returns**:

* `result` (number)

***

### `childOffsetX`

Integer number. View offset in pixels, applied to the position of child nodes. Used in scroll panes.

**Returns**:

* `result` (number)

***

### `childOffsetY`

See childOffsetX.

**Returns**:

* `result` (number)

***

### `children`

*Read-only*. The child elements of this element. This is a copy that does not track changes.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement)[])

***

### `color`

The RGB color of the element. An array of 3 numbers with values ranging from `0.0` to `1.0`. For menus and rects, it sets the background colour. For text, it sets the text colour. For images, it multiplies the image by the colour.

**Returns**:

* `result` (number[])

***

### `consumeMouseEvents`

When `true`, mouse events over this element are sent to event handlers, or discarded if there is no handler. When `false`, mouse events go upwards to the first ancestor that can consume mouse events. Useful to set on widget sub-elements. `true` by default.

**Returns**:

* `result` (boolean)

***

### `contentType`

*Read-only*. The type of content this `tes3uiElement` represents. Maps to values in [`tes3.contentType`](https://mwse.github.io/MWSE/references/content-types/).

**Returns**:

* `result` (string)

***

### `disabled`

Disables user actions on this element. Widgets may stop accepting mouse and keyboard input while disabled.

**Returns**:

* `result` (boolean)

***

### `flowDirection`

Can have values `"left_to_right"` or `"top_to_bottom"`. These values are available as [`tes3.flowDirection`](https://mwse.github.io/MWSE/references/flow-directions/) enumeration. Indicates which direction child elements are laid out.

**Returns**:

* `result` (string)

***

### `font`

Index of font to use for text.
		0 - Magic Cards (default)
		1 - Century Sans
		2 - Daedric

**Returns**:

* `result` (number)

***

### `height`

Element dimensions in pixels. Integer number.

**Returns**:

* `result` (number)

***

### `heightProportional`

Sets element dimensions using a proportional sizer. The sizer starts with the parent dimension in the flow direction, subtracts any fixed dimension children leaving the proportional sizer space. Each proportionally sized element then gets an equal division of the space, multiplied by this member. Values above 1.0 are permissible.

	Bug note: If widthProportional is used without heightProportional, an element may not respond to changes in parent size. It is recommended to set heightProportional, or have a fixed size sibling element if dynamic reflow is required.

	Overrides fixed, minimum and maximum sizes unless this value is `nil` (default).

**Returns**:

* `result` (number)

***

### `id`

*Read-only*. The element's ID.  The element can be later accessed by `ancestor:findChild(id)`. Note that multiple elements may have the same ID, such as subparts of a widget, or list items. Therefore, you may think of ids as an element class identifier.

**Returns**:

* `result` (number)

***

### `imageScaleX`

Image scaling multipliers. Only applies to image elements.

**Returns**:

* `result` (number)

***

### `imageScaleY`

Image scaling multipliers. Only applies to image elements.

**Returns**:

* `result` (number)

***

### `justifyText`

Can have values `"left"`, `"center"`, or `"right"`. Controls text justification. Maps to values in the [`tes3.justifyText`](https://mwse.github.io/MWSE/references/justify-text/) table. To work correctly for center/right justification, `wrapText` must be `true`.

**Returns**:

* `result` (string)

***

### `maxHeight`

Maximum dimensions for auto-size layout and resizable frames. Integer number.

**Returns**:

* `result` (number)

***

### `maxWidth`

Maximum dimensions for auto-size layout and resizable frames. Integer number.

**Returns**:

* `result` (number)

***

### `minHeight`

Minimum dimensions for auto-size layout and resizable frames. Integer number.

**Returns**:

* `result` (number)

***

### `minWidth`

Minimum dimensions for auto-size layout and resizable frames. Integer number.

**Returns**:

* `result` (number)

***

### `name`

*Read-only*. The element's name, taken from the name registered for the ID.

**Returns**:

* `result` (string)

***

### `paddingAllSides`

Integer number. Padding size in pixels. Padding is the blank space between the edge of an element and its contents. Individual padding sizes default to `-1`, making it use the paddingAllSides setting.

**Returns**:

* `result` (number)

***

### `paddingBottom`

Integer number. Bottom padding size in pixels. When this is set to `-1`, the paddingAllSides setting is used for this side instead.

**Returns**:

* `result` (number)

***

### `paddingLeft`

Integer number. Left padding size in pixels. When this is set to `-1`, the paddingAllSides setting is used for this side instead.

**Returns**:

* `result` (number)

***

### `paddingRight`

Integer number. Right padding size in pixels. When this is set to `-1`, the paddingAllSides setting is used for this side instead.

**Returns**:

* `result` (number)

***

### `paddingTop`

Integer number. Top padding size in pixels. When this is set to `-1`, the paddingAllSides setting is used for this side instead.

**Returns**:

* `result` (number)

***

### `parent`

*Read-only*. A reference to the parent element.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `positionX`

Integer number. Element X position relative to its parent's top-left content area. For top-level menus there is a difference: (0, 0) is the centre of the screen.

**Returns**:

* `result` (number)

***

### `positionY`

Integer number. Element Y position relative to its parent's top-left content area. For top-level menus there is a difference: (0, 0) is the centre of the screen.

**Returns**:

* `result` (number)

***

### `rawText`

The raw value of the element's text. This, unlike the normal text property, will not directly read widget information or handle the removal of the positional cursor.

**Returns**:

* `result` (string)

***

### `repeatKeys`

Controls if there is repeating text input when keys are held down. `true` by default.

**Returns**:

* `result` (boolean)

***

### `scaleMode`

When set to `true` on image and NIF elements, they are scaled to fit `width` and `height`.

**Returns**:

* `result` (boolean)

***

### `sceneNode`

*Read-only*. Underlying access to the scene graph responsible for this element.

**Returns**:

* `result` ([niNode](../../types/niNode))

***

### `text`

The element's text. Text input can be read by accessing this property.

	tip: If your element's text is a number, you need to manually convert it to string using `tostring()`.

**Returns**:

* `result` (string)

***

### `texture`

The underlying texture for the element. This assumes that the element is of an element type. Setting this value will change the element to an image type.

**Returns**:

* `result` ([niSourceTexture](../../types/niSourceTexture))

***

### `type`

*Read-only*. The type of content this `tes3uiElement` represents. This is an expanded set of the options available from the `contentType` property. Maps to values in [`tes3.uiElementType`](https://mwse.github.io/MWSE/references/tes3uiElement-types/).

**Returns**:

* `result` (string)

***

### `visible`

Controls if the element is visible.

**Returns**:

* `result` (boolean)

***

### `widget`

Access to element specific properties. This will be `nil` if there are no element specific properties. See the return types and the create* functions for more details.

**Returns**:

* `result` ([tes3uiWidget](../../types/tes3uiWidget), nil)

***

### `width`

Element dimensions in pixels. Integer number.

**Returns**:

* `result` (number)

***

### `widthProportional`

Sets element dimensions using a proportional sizer. The sizer starts with the parent dimension in the flow direction, subtracts any fixed dimension children leaving the proportional sizer space. Each proportionally sized element then gets an equal division of the space, multiplied by this member. Values above 1.0 are permissible.

	Bug note: If widthProportional is used without heightProportional, an element may not respond to changes in parent size. It is recommended to set heightProportional, or have a fixed size sibling element if dynamic reflow is required.

	Overrides fixed, minimum and maximum sizes unless this value is `nil` (default).

**Returns**:

* `result` (number)

***

### `wrapText`

Controls text wrapping. Setting this to `true` will also set `layoutHeightFraction` to `1.0`, which is required for wrapping text to adjust to its container size.

**Returns**:

* `result` (boolean)

***

## Methods

### `copy`

Copies this element to a new parent. This function can have unintended consequences. The specifics of what exact elements are being copied is important.

```lua
local copy = myObject:copy(to, copyChildren, copyProperties)
```

**Parameters**:

* `to` ([tes3uiElement](../../types/tes3uiElement)): Where to create the copy.
* `copyChildren` (boolean): *Default*: `true`. If true, all children will also be copied to the newly created element.
* `copyProperties` (boolean): *Default*: `true`. If true, all properties will be copied to the newly created element.

**Returns**:

* `copy` ([tes3uiElement](../../types/tes3uiElement)): The created copy.

***

### `createBlock`

Creates an empty block container inside the element. Used to group and layout elements.

```lua
local result = myObject:createBlock({ id = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createButton`

Creates a clickable button. Register the `mouseClick` event to capture a button press.

Button specific properties can be accessed through the `widget` property. The widget type for buttons is [`tes3uiButton`](https://mwse.github.io/MWSE/types/tes3uiButton/).

```lua
local result = myObject:createButton({ id = ..., text = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `text` (string): *Optional*. The text to add to the button. It will highlight on mouseover like a text select widget.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createCycleButton`

Creates a clickable button, whose text changes linearly through options as it is clicked. Register the `valueChanged` event for when the option is cycled or changed via script.

Button specific properties can be accessed through the `widget` property. The widget type for buttons is [`tes3uiCycleButton`](https://mwse.github.io/MWSE/types/tes3uiCycleButton/).

```lua
local result = myObject:createCycleButton({ id = ..., options = ..., index = ... })
```

**Parameters**:

* `params` (table)
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `options` ([tes3uiCycleButtonOption](../../types/tes3uiCycleButtonOption)[]): An array of options for the button to cycle through. At minimum the option must have a `text` property defined, to show on the button. If a `value` is provided, it can be accessed through the `.widget`'s `.value` property.
	* `index` (number): *Optional*. The index selected by default.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createDivider`

Creates a textured horizontal divider line, as used in the magic and stat menus. Scales automatically to the container width.

```lua
local result = myObject:createDivider({ id = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createFillBar`

Creates a horizontal quantity indicator bar.

Fillbar specific properties can be accessed through the `widget` property. The widget type for fillbars is [`tes3uiFillBar`](https://mwse.github.io/MWSE/types/tes3uiFillBar/).

```lua
local result = myObject:createFillBar({ id = ..., current = ..., max = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `current` (number): *Optional*. The current value of the fillbar.
	* `max` (number): *Optional*. The maximum value of the fillbar.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createHorizontalScrollPane`

Creates a horizontally scrolling pane.

Scroll pane specific properties can be accessed through the `widget` property. The widget type for scroll panes is [`tes3uiScrollPane`](https://mwse.github.io/MWSE/types/tes3uiScrollPane/).

```lua
local result = myObject:createHorizontalScrollPane({ id = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createHyperlink`

Creates a clickable text, colored as a link. When the link is clicked, a URL is opened in the player's browser. If the `confirm` property is set, a confirmation prompt is opened first.

Hyperlink-specific properties can be accessed through the `widget` property. The widget type for hyperlinks is [`tes3uiHyperlink`](https://mwse.github.io/MWSE/types/tes3uiHyperlink/).

```lua
local element = myObject:createHyperlink({ id = ..., text = ..., url = ..., confirm = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `text` (string): The text to add to the hyperlink.
	* `url` (string): The URL to open when the text is clicked.
	* `confirm` (boolean): *Default*: `true`. If true, a confirmation prompt will be shown before any URL is opened.

**Returns**:

* `element` ([tes3uiElement](../../types/tes3uiElement))

***

### `createHypertext`

Creates a text area with clickable words as links. Usage is still under research.

```lua
local result = myObject:createHypertext({ id = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createImage`

Creates an image element from a texture file. The texture must have power-of-2 dimensions (i.e. 16, 32, 64, 128, 256, 512, 1024); the final display size can be trimmed by setting width and height.

```lua
local result = myObject:createImage({ id = ..., path = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `path` (string): An image path. This path is relative to `Data Files`.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createImageButton`

Creates an interactive button composed of images for the **idle**, **over**, and **pressed** states. The texture must have power-of-2 dimensions (i.e. 16, 32, 64, 128, 256, 512, 1024); the final display size can be trimmed by setting width and height.

```lua
local result = myObject:createImageButton({ id = ..., idle = ..., over = ..., pressed = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `idle` (string): The path to the idle image. This path is relative to `Data Files`.
	* `over` (string): The path to the mouse hover image. This path is relative to `Data Files`.
	* `pressed` (string): The path to the mouse pressed image. This path is relative to `Data Files`.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createLabel`

Creates a text label. It defaults to displaying all text on a single line. To get a multi-line label, set `wrap_text` to `true`. The element is created with `autoWidth` and `autoHeight` turned on.

```lua
local result = myObject:createLabel({ id = ..., text = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `text` (string): *Default*: `(nil)`. The text to display.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createNif`

Creates a NIF model from a file. Still under research.

```lua
local result = myObject:createNif({ id = ..., text = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `text` (string): A model path. This path is relative to `Data Files`.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createParagraphInput`

Creates a multi-line text input element, with line wrapping on. To receive input the keyboard must be captured with `tes3ui.acquireTextInput(element)`. Read the input with the `text` property. Write an initial value to edit by setting the `text` property.

Paragraph input specific properties can be accessed through the `widget` property. The widget type for paragraph inputs is [`tes3uiParagraphInput`](https://mwse.github.io/MWSE/types/tes3uiParagraphInput/).

```lua
local result = myObject:createParagraphInput({ id = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createRect`

Creates a filled rectangle. The rectangle is displayed as filled with the element's colour. It supports alpha compositing.

```lua
local result = myObject:createRect({ id = ..., color = ..., randomizeColor = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `color` ([tes3vector3](../../types/tes3vector3), table): *Optional*. The fill color for the element.
	* `randomizeColor` (boolean): *Default*: `false`. If true, the creation color will be randomized.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createSlider`

Creates a horizontal slider.

Slider specific properties can be accessed through the `widget` property. The widget type for sliders is [`tes3uiSlider`](https://mwse.github.io/MWSE/types/tes3uiSlider/).

```lua
local result = myObject:createSlider({ id = ..., current = ..., max = ..., step = ..., jump = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `current` (number): The current value of the slider.
	* `max` (number): The maximum value of the slider.
	* `step` (number): *Default*: `1`. The change in value when clicking the left and right arrow buttons.
	* `jump` (number): *Default*: `5`. The change in value when clicking into the empty areas next to the slider handle.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createSliderVertical`

Creates a vertical slider.

Slider specific properties can be accessed through the `widget` property. The widget type for sliders is [`tes3uiSlider`](https://mwse.github.io/MWSE/types/tes3uiSlider/).

```lua
local result = myObject:createSliderVertical({ id = ..., current = ..., max = ..., step = ..., jump = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `current` (number): The current value of the slider.
	* `max` (number): The maximum value of the slider.
	* `step` (number): *Default*: `1`. The change in value when clicking the left and right arrow buttons.
	* `jump` (number): *Default*: `5`. The change in value when clicking into the empty areas next to the slider handle.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createTextInput`

Creates a single line text input element. To receive input the keyboard must be captured with `tes3ui.acquireTextInput(element)`. Read the input with the `text` property. Write an initial value to display by setting the `text` property; that value will be cleared on the first keypress.

Text input specific properties can be accessed through the `widget` property. The widget type for text inputs is [`tes3uiTextInput`](https://mwse.github.io/MWSE/types/tes3uiTextInput/).

```lua
local result = myObject:createTextInput({ id = ..., text = ..., placeholderText = ..., numeric = ..., autoFocus = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `text` (string): *Optional*. The initial text to use for the input.
	* `placeholderText` (string): *Optional*. Placeholder text for the input. If the element is ever made empty, this will be displayed instead in the disabled text color.
	* `numeric` (boolean): *Default*: `false`. If true, only numbers can be put into the input. The text value of the element will still be a string, and need to be converted using `tonumber`.
	* `autoFocus` (boolean): *Default*: `false`. If true, the input will be automatically focused after creation.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createTextSelect`

Creates a selectable line of text, with configurable hover, click, and disabled colours. Can be used to create a list box by placing them in a ScrollPane.

Text select specific properties can be accessed through the `widget` property. The widget type for text selects is [`tes3uiTextSelect`](https://mwse.github.io/MWSE/types/tes3uiTextSelect/).

```lua
local result = myObject:createTextSelect({ id = ..., text = ..., state = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.
	* `text` (string): *Optional*. The text to display.
	* `state` (number): *Default*: `tes3.uiState.normal`. The initial interaction state.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createThinBorder`

Creates a styled thin border element. Any content should be created as children of this border.

```lua
local result = myObject:createThinBorder({ id = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `createVerticalScrollPane`

Creates a vertically scrolling pane. Useful as a list box.

Scroll pane specific properties can be accessed through the `widget` property. The widget type for scroll panes is [`tes3uiScrollPane`](https://mwse.github.io/MWSE/types/tes3uiScrollPane/).

```lua
local result = myObject:createVerticalScrollPane({ id = ... })
```

**Parameters**:

* `params` (table): *Optional*.
	* `id` (string, number): *Optional*. An identifier to help find this element later.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `destroy`

Deletes an element and all its child elements. If any element is bound to text input by `tes3ui.acquireTextInput`_, the input is automatically released.

```lua
myObject:destroy()
```

***

### `destroyChildren`

Deletes all the child elements of this element. If any element is bound to text input by `tes3ui.acquireTextInput`_, the input is automatically released.

```lua
myObject:destroyChildren()
```

***

### `findChild`

Finds a child element matching the `id` argument. Searches children recursively. Returns the first child element with a matching id, or `nil` if no match found.

```lua
local result = myObject:findChild(id)
```

**Parameters**:

* `id` (string, number): The id to search for.

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `forwardEvent`

Forwards an event to the original Morrowind event handler, using this element as a source. This may be optionally called at any point in a callback. Note that handler may or may not destroy the event widget or the menu, so you should know how it behaves before accessing any elements after a callback. 

```lua
myObject:forwardEvent(id)
```

**Parameters**:

* `id` (tes3uiEvent): The original UI event.

***

### `getContentElement`

Returns the descendant element that creation functions used on this element will place children into, or the calling element if there is no specific descendant for children.

	Some widgets like ScrollPanes are built of multiple layers of elements. When an element is created in a complex widget, it is automatically placed as a child of a content element, but other functions do not access this content element directly. This function finds this content container for any element, so that changing layout and accessing children is possible. For simple elements, the calling element will be returned so that there is always a valid container element.

```lua
local result = myObject:getContentElement()
```

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `getLuaData`

Gets an arbitrary lua value from the UI element. Each element has the capability to store keyed lua data, as if it were a table, using this function and `setLuaData`.

```lua
local result = myObject:getLuaData(key)
```

**Parameters**:

* `key` (string): The key for the lua data.

**Returns**:

* `result` (any)

***

### `getPropertyBool`

Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function gets a property as a boolean value, defaulting to false if the property was not set.

```lua
local value = myObject:getPropertyBool(property)
```

**Parameters**:

* `property` (number, string): The property to get.

**Returns**:

* `value` (boolean): The value of the property, defaulting to false if the property was not set.

***

### `getPropertyCallback`

Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function gets a property as a number value, defaulting to `0` if the property was not set. This function can be dangerous to use, and can lead to crashes if not properly understood.

```lua
local value = myObject:getPropertyCallback(property)
```

**Parameters**:

* `property` (number, string): The property to get.

**Returns**:

* `value` (number): The value of the property, defaulting to `0` if the property was not set.

***

### `getPropertyFloat`

Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function gets a property as a floating-point value, defaulting to `0` if the property was not set.

```lua
local value = myObject:getPropertyFloat(property)
```

**Parameters**:

* `property` (number, string): The property to get.

**Returns**:

* `value` (number): The value of the property, defaulting to `0` if the property was not set.

***

### `getPropertyInt`

Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function gets a property as an integer value, defaulting to `0` if the property was not set.

```lua
local value = myObject:getPropertyInt(property)
```

**Parameters**:

* `property` (number, string): The property to get.

**Returns**:

* `value` (number): The value of the property, defaulting to `0` if the property was not set.

***

### `getPropertyObject`

Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function gets a property as an object value, defaulting to `nil` if the property was not set. This function can be dangerous to use, and can lead to crashes if not properly understood.

```lua
local value = myObject:getPropertyObject(property, typeCast)
```

**Parameters**:

* `property` (number, string): The property to get.
* `typeCast` (string, nil): *Default*: `tes3baseObject`. The casting of the property to get.

**Returns**:

* `value` (number): The value of the property, defaulting to `nil` if the property was not set.

***

### `getPropertyProperty`

Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function gets a property whose value is, itself, a property, defaulting to `0` if the property was not set.

```lua
local value = myObject:getPropertyProperty(property)
```

**Parameters**:

* `property` (number, string): The property to get.

**Returns**:

* `value` (number): The value of the property, defaulting to `0` if the property was not set.

***

### `getTopLevelMenu`

Finds the parent menu containing the element. Useful for finding the correct menu to run layout updates on.

```lua
local result = myObject:getTopLevelMenu()
```

**Returns**:

* `result` ([tes3uiElement](../../types/tes3uiElement))

***

### `loadMenuPosition`

Restores the menu's position and size information from the Morrowind.ini file. This may only be called on top-level parents.

```lua
myObject:loadMenuPosition()
```

***

### `move`

Copies this element to a new parent, then destroys this element. This function can have unintended consequences. The specifics of what exact elements are being copied is important.

```lua
local copy = myObject:move(to)
```

**Parameters**:

* `to` ([tes3uiElement](../../types/tes3uiElement)): Where to create the copy.

**Returns**:

* `copy` ([tes3uiElement](../../types/tes3uiElement)): The created copy.

***

### `register`

Sets an `event` handler, which can add or override an existing event handler. The use of `registerBefore` or `registerAfter` is recommended if you do not want to replace the existing event handler. The eventID can be a standard `event` name, or an event specific to an element class. These can be accessed through [`tes3.uiEvent`](https://mwse.github.io/MWSE/references/ui-events/) for convenience. The callback receives an argument with the event data. See below for details.
	
The original Morrowind callback is captured and can be invoked with the `forwardEvent` method on the event argument. If there is an existing Lua callback, it is replaced.

	Standard events:
		**mouseLeave**
			Mouse cursor moving outside an element. Triggers once.
		**mouseOver**
			Mouse cursor moving over an element. Triggers once.
		**mouseDown**
			Left mouse button down over an element.
		**mouseClick**
			Left mouse button up over an element, after a mouseDown over the element.
		**mouseScrollUp**
			..
		**mouseScrollDown**
			Mouse wheel scrolling.
		**mouseDoubleClick**
			Standard double-click.
		**mouseStillIdle**
			Mouse cursor positioned outside an element. Triggers every frame.
		**mouseStillOver**
			Mouse cursor positioned over an element. Triggers every frame.
		**mouseStillPressed**
			Mouse cursor positioned over an element, after a mouseDown over the element. Triggers every frame.
		**mouseStillPressedOutside**
			Apparently not working in the engine. Mouse cursor positioned outside an element, after a mouseDown over the element. Triggers every frame.
		**mouseRelease**
			Left mouse button up over an element.
		**keyPress**
			A raw key press.
		**keyEnter**
			The Return key is pressed.
		**help**
			On mouseover, but also marking the element as having a tooltip. Create a tooltip within the callback using the `tes3ui.createTooltipMenu` function.
		**focus**
			When a menu is clicked on, and moved on top of other menus.
		**unfocus**
			Just before another menu is clicked on, or a widget in that menu receives an event, or when the menu mode is toggled off. You may return false from this event to prevent the menu from being deselected, and to prevent leaving menu mode.
		**preUpdate**
			Before the menu layout is updated.
		**update**
			After the menu layout is updated.
		**destroy**
			When the UI element is destroyed, before any data or children are destroyed.

	Widget-specific events:
		Slider:
			**PartScrollBar_changed**
				Triggers on value change; moving the slider is not enough if the value is the same.


Event forwarding
-------------------------------------------------------------------------------

The original Morrowind event handler is saved when you first register an event. It may be optionally invoked with the `forwardEvent` method.  Note that handler may or may not destroy the event widget or the menu, so you should know how it behaves before accessing any elements after a callback. 

**Example**

	local function onClick(e)
		-- pre-event code
		e.source:forwardEvent(e)
		-- post-event code
	end
	
	local button = menu:findChild("MenuExample_Ok")
	button:register("mouseClick", onClick)


Event handler
-------------------------------------------------------------------------------

The standard type signature for events.

	`boolean`_ eventHandler(**EventData** e)
		Returns: `optional`
			Returning `false` may cancel an interaction for certain events. e.g. unfocus
	
		EventData:
			**source** (`Element`_)
				The source element of the event.
			
			**id** (`number`_)
				The numeric id of the event type.
		
			**widget** (`Element`_)
				The widget element that the source belongs to, if the element is a sub-part of a widget. May not be accurate if the element is not a sub-part.
			
			**data0** (`number`_)
				..
				
			**data1** (`number`_)
				Event-specific raw data values. For mouse events, these are the screen X and Y coordinates of the pointer. For keyboard events, data0 is the `scan code`_.
			
			**relativeX** (`number`_)
				..
				
			**relativeY** (`number`_)
				For mouse events only. X and Y coordinates of the pointer relative to the top-left of the element.

```lua
myObject:register(eventID, callback)
```

**Parameters**:

* `eventID` (string): The event id. Maps to values in [`tes3.uiEvent`](https://mwse.github.io/MWSE/references/ui-events/).
* `callback` (function): The callback function.

***

### `registerAfter`

Sets an `event` handler to run after any existing event handler on the element. Can be any event usable with `register`. The callback receives an argument with the event data. See `register` for details.

```lua
myObject:registerAfter(eventID, callback)
```

**Parameters**:

* `eventID` (string): The event id.
* `callback` (function): The callback function.

***

### `registerBefore`

Sets an `event` handler to run before any existing event handler on the element. Can be any event usable with `register`. The callback receives an argument with the event data. See `register` for details.

```lua
myObject:registerBefore(eventID, callback)
```

**Parameters**:

* `eventID` (string): The event id.
* `callback` (function): The callback function.

***

### `reorderChildren`

	Moves the layout order of the children of this element. `count` elements are taken from starting child `Element`_ or index (0-based) `moveFrom`, and moved before the child `Element`_ or index (0-based) `insertBefore`. If `count` is -1, all children after `moveFrom` are moved. If any index is a negative number, then the index represents a distance from the end of the child list.

	Returns `true` if the operation succeeded, or `false` if at least one argument was invalid.

```lua
local result = myObject:reorderChildren(insertBefore, moveFrom, count)
```

**Parameters**:

* `insertBefore` ([tes3uiElement](../../types/tes3uiElement), number): The insertion point (or its 0-based child index).
* `moveFrom` ([tes3uiElement](../../types/tes3uiElement), number): The first child (or 0-based child index) to be moved.
* `count` (number): The number of child elements to move.

**Returns**:

* `result` (boolean)

***

### `saveMenuPosition`

Saves the menu's position and size information to the Morrowind.ini file. This may only be called on top-level parents. Note that most menus save their position automatically.

```lua
myObject:saveMenuPosition()
```

***

### `setLuaData`

Sets an arbitrary lua value for the UI element. Each element has the capability to store keyed lua data, as if it were a table, using this function and `getLuaData`.

```lua
myObject:setLuaData(key, value)
```

**Parameters**:

* `key` (string): The key for the lua data.
* `value` (any): The value to set.

***

### `setPropertyBool`

Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function sets a property to a boolean value.

```lua
myObject:setPropertyBool(property, value)
```

**Parameters**:

* `property` (number, string): The property to set.
* `value` (boolean): The value to set.

***

### `setPropertyCallback`

Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function sets a property to a callback value, represented as a number. This function can be dangerous to use, and can lead to crashes if not properly understood.

```lua
myObject:setPropertyCallback(property, value)
```

**Parameters**:

* `property` (number, string): The property to set.
* `value` (number): The value to set.

***

### `setPropertyFloat`

Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function sets a property to a floating-point value.

```lua
myObject:setPropertyFloat(property, value)
```

**Parameters**:

* `property` (number, string): The property to set.
* `value` (number): The value to set.

***

### `setPropertyInt`

Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function sets a property to an integer value.

```lua
myObject:setPropertyInt(property, value)
```

**Parameters**:

* `property` (number, string): The property to set.
* `value` (number): The value to set.

***

### `setPropertyObject`

Sets a property value with `prop` as the property key. Properties are named variables attached to an element. Gets a property value with `propName` as the property key. Morrowind uses these to bind variables to the UI. Useful for element class-specific properties.

```lua
myObject:setPropertyObject(property, value)
```

**Parameters**:

* `property` (number, string): The property to get.
* `value` (object): The value to set.

***

### `setPropertyProperty`

Properties are named variables attached to an element. Sets a property value with `property` as the property key. Morrowind uses these to bind variables to the UI. Useful for element class-specific properties. This function sets a property whose value is, itself, a property.

```lua
myObject:setPropertyProperty(property, value)
```

**Parameters**:

* `property` (number, string): The property to get.
* `value` (number, string): The value to set.

***

### `sortChildren`

Reorders the element's children given a sorting function.

```lua
myObject:sortChildren(sortFunction)
```

**Parameters**:

* `sortFunction` (function): The function to sort with. Like most sorting functions, this is given two arguments to compare.

***

### `triggerEvent`

Triggers a UI event on an element, either using supplied event data, or by constructing new event data using `eventName`. `eventName` is the same as used in `register`.

```lua
myObject:triggerEvent(eventID)
```

**Parameters**:

* `eventID` (tes3uiEvent, string): The event, or event ID.

***

### `unregister`

Unregisters an `event` handler.

```lua
local wasUnregistered = myObject:unregister(eventID)
```

**Parameters**:

* `eventID` (string): The event id.

**Returns**:

* `wasUnregistered` (boolean)

***

### `unregisterAfter`

Unregisters a function previously registered using `:registerAfter`.

```lua
local wasUnregistered = myObject:unregisterAfter(eventID, callback)
```

**Parameters**:

* `eventID` (string): The event id.
* `callback` (function): The callback function.

**Returns**:

* `wasUnregistered` (boolean)

***

### `unregisterBefore`

Unregisters a function previously registered using `:registerBefore`.

```lua
local wasUnregistered = myObject:unregisterBefore(eventID, callback)
```

**Parameters**:

* `eventID` (string): The event id.
* `callback` (function): The callback function.

**Returns**:

* `wasUnregistered` (boolean)

***

### `updateLayout`

Updates a menu's element layout and all child elements. Needs to be called on a top level menu when any elements contained in it are added, moved or resized.

```lua
myObject:updateLayout()
```

***

