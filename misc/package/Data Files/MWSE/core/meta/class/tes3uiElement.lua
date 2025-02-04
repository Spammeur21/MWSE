--- @meta
--- @diagnostic disable:undefined-doc-name

--- A UI element, the main building block of the UI system. All elements are created with methods on a parent Element.  Elements are very configurable, and have many HTML-like layout features. All layout properties can be set to `nil` to reset them to the default value, which will deactivate any related layout mode.
--- 
--- Elements can have custom data attached using their `Property`_ key-value store, and specific Elements have specific `element.widget` accessors to control behaviour.
--- @class tes3uiElement
--- @field absolutePosAlignX number Sets element position to a point relative to the parent element. 0.0 = left/top content edge, 1.0 = right/bottom content edge. The positioning is absolute, which frees the element from the standard flow layout and allows overlapping elements.
--- 	
--- 	Bug note: Elements may not respond to widthProportional/heightProportional sizing after either of these properties are set. If you need to use both you should consider testing if it works first.
--- @field absolutePosAlignY number See absolutePosAlignX.
--- @field alpha number Element alpha colour, using range [0.0, 1.0]. Used to composite elements. If you wish to hide an element completely, use `disable` instead.
--- @field autoHeight boolean When `true`, automatically expands element dimensions to fit child elements. Dimensions are restricted by `minWidth`, `minHeight`, `maxWidth` and `maxHeight` properties.
--- @field autoWidth boolean When `true`, automatically expands element dimensions to fit child elements. Dimensions are restricted by `minWidth`, `minHeight`, `maxWidth` and `maxHeight` properties.
--- @field borderAllSides number Integer number. Border size in pixels. Border is the extra empty space around an element. Individual border sizes default to using the borderAllSides setting.
--- @field borderBottom number Integer number. Bottom border size in pixels. When this is set to `-1`, the borderAllSides setting is used for this side instead.
--- @field borderLeft number Integer number. Left border size in pixels. When this is set to `-1`, the borderAllSides setting is used for this side instead.
--- @field borderRight number Integer number. Left border size in pixels. When this is set to `-1`, the borderAllSides setting is used for this side instead.
--- @field borderTop number Integer number. Top border size in pixels. When this is set to `-1`, the borderAllSides setting is used for this side instead.
--- @field childAlignX number Sets alignment of child elements inside its parent, though it only works in specific conditions. 0.0 = left/top edge touches left/top edge of parent, 0.5 = centred, 1.0 = right/bottom edge touches right/bottom edge of parent. For negative values, there is a special case behaviour: all children but the last will be left-aligned/top-aligned, the last child will be right-aligned/bottom-aligned.
--- 	
--- 	Child alignment only works if the element has proportional sizing (using widthProportional/heightProportional) and all children use non-proportional sizing (widthProportional and heightProportional are nil).
--- @field childAlignY number See childAlignX.
--- @field childOffsetX number Integer number. View offset in pixels, applied to the position of child nodes. Used in scroll panes.
--- @field childOffsetY number See childOffsetX.
--- @field children tes3uiElement[] *Read-only*. The child elements of this element. This is a copy that does not track changes.
--- @field color number[] The RGB color of the element. An array of 3 numbers with values ranging from `0.0` to `1.0`. For menus and rects, it sets the background colour. For text, it sets the text colour. For images, it multiplies the image by the colour.
--- @field consumeMouseEvents boolean When `true`, mouse events over this element are sent to event handlers, or discarded if there is no handler. When `false`, mouse events go upwards to the first ancestor that can consume mouse events. Useful to set on widget sub-elements. `true` by default.
--- @field contentType string *Read-only*. The type of content this `tes3uiElement` represents. Maps to values in [`tes3.contentType`](https://mwse.github.io/MWSE/references/content-types/).
--- @field disabled boolean Disables user actions on this element. Widgets may stop accepting mouse and keyboard input while disabled.
--- @field flowDirection string Can have values `"left_to_right"` or `"top_to_bottom"`. These values are available as [`tes3.flowDirection`](https://mwse.github.io/MWSE/references/flow-directions/) enumeration. Indicates which direction child elements are laid out.
--- @field font number Index of font to use for text.
--- 		0 - Magic Cards (default)
--- 		1 - Century Sans
--- 		2 - Daedric
--- @field height number Element dimensions in pixels. Integer number.
--- @field heightProportional number Sets element dimensions using a proportional sizer. The sizer starts with the parent dimension in the flow direction, subtracts any fixed dimension children leaving the proportional sizer space. Each proportionally sized element then gets an equal division of the space, multiplied by this member. Values above 1.0 are permissible.
--- 
--- 	Bug note: If widthProportional is used without heightProportional, an element may not respond to changes in parent size. It is recommended to set heightProportional, or have a fixed size sibling element if dynamic reflow is required.
--- 
--- 	Overrides fixed, minimum and maximum sizes unless this value is `nil` (default).
--- @field id number *Read-only*. The element's ID.  The element can be later accessed by `ancestor:findChild(id)`. Note that multiple elements may have the same ID, such as subparts of a widget, or list items. Therefore, you may think of ids as an element class identifier.
--- @field imageScaleX number Image scaling multipliers. Only applies to image elements.
--- @field imageScaleY number Image scaling multipliers. Only applies to image elements.
--- @field justifyText string Can have values `"left"`, `"center"`, or `"right"`. Controls text justification. Maps to values in the [`tes3.justifyText`](https://mwse.github.io/MWSE/references/justify-text/) table. To work correctly for center/right justification, `wrapText` must be `true`.
--- @field maxHeight number Maximum dimensions for auto-size layout and resizable frames. Integer number.
--- @field maxWidth number Maximum dimensions for auto-size layout and resizable frames. Integer number.
--- @field minHeight number Minimum dimensions for auto-size layout and resizable frames. Integer number.
--- @field minWidth number Minimum dimensions for auto-size layout and resizable frames. Integer number.
--- @field name string *Read-only*. The element's name, taken from the name registered for the ID.
--- @field paddingAllSides number Integer number. Padding size in pixels. Padding is the blank space between the edge of an element and its contents. Individual padding sizes default to `-1`, making it use the paddingAllSides setting.
--- @field paddingBottom number Integer number. Bottom padding size in pixels. When this is set to `-1`, the paddingAllSides setting is used for this side instead.
--- @field paddingLeft number Integer number. Left padding size in pixels. When this is set to `-1`, the paddingAllSides setting is used for this side instead.
--- @field paddingRight number Integer number. Right padding size in pixels. When this is set to `-1`, the paddingAllSides setting is used for this side instead.
--- @field paddingTop number Integer number. Top padding size in pixels. When this is set to `-1`, the paddingAllSides setting is used for this side instead.
--- @field parent tes3uiElement *Read-only*. A reference to the parent element.
--- @field positionX number Integer number. Element X position relative to its parent's top-left content area. For top-level menus there is a difference: (0, 0) is the centre of the screen.
--- @field positionY number Integer number. Element Y position relative to its parent's top-left content area. For top-level menus there is a difference: (0, 0) is the centre of the screen.
--- @field rawText string The raw value of the element's text. This, unlike the normal text property, will not directly read widget information or handle the removal of the positional cursor.
--- @field repeatKeys boolean Controls if there is repeating text input when keys are held down. `true` by default.
--- @field scaleMode boolean When set to `true` on image and NIF elements, they are scaled to fit `width` and `height`.
--- @field sceneNode niBillboardNode|niCollisionSwitch|niNode|niSwitchNode *Read-only*. Underlying access to the scene graph responsible for this element.
--- @field text string The element's text. Text input can be read by accessing this property.
--- 
--- 	tip: If your element's text is a number, you need to manually convert it to string using `tostring()`.
--- @field texture niSourceTexture The underlying texture for the element. This assumes that the element is of an element type. Setting this value will change the element to an image type.
--- @field type string *Read-only*. The type of content this `tes3uiElement` represents. This is an expanded set of the options available from the `contentType` property. Maps to values in [`tes3.uiElementType`](https://mwse.github.io/MWSE/references/tes3uiElement-types/).
--- @field visible boolean Controls if the element is visible.
--- @field widget tes3uiButton|tes3uiCycleButton|tes3uiFillBar|tes3uiHyperlink|tes3uiParagraphInput|tes3uiScrollPane|tes3uiSlider|tes3uiTextInput|tes3uiTextSelect|nil Access to element specific properties. This will be `nil` if there are no element specific properties. See the return types and the create* functions for more details.
--- @field width number Element dimensions in pixels. Integer number.
--- @field widthProportional number Sets element dimensions using a proportional sizer. The sizer starts with the parent dimension in the flow direction, subtracts any fixed dimension children leaving the proportional sizer space. Each proportionally sized element then gets an equal division of the space, multiplied by this member. Values above 1.0 are permissible.
--- 
--- 	Bug note: If widthProportional is used without heightProportional, an element may not respond to changes in parent size. It is recommended to set heightProportional, or have a fixed size sibling element if dynamic reflow is required.
--- 
--- 	Overrides fixed, minimum and maximum sizes unless this value is `nil` (default).
--- @field wrapText boolean Controls text wrapping. Setting this to `true` will also set `layoutHeightFraction` to `1.0`, which is required for wrapping text to adjust to its container size.
tes3uiElement = {}

--- Copies this element to a new parent. This function can have unintended consequences. The specifics of what exact elements are being copied is important.
--- @param to tes3uiElement Where to create the copy.
--- @param copyChildren boolean? *Default*: `true`. If true, all children will also be copied to the newly created element.
--- @param copyProperties boolean? *Default*: `true`. If true, all properties will be copied to the newly created element.
--- @return tes3uiElement copy The created copy.
function tes3uiElement:copy(to, copyChildren, copyProperties) end

--- Creates an empty block container inside the element. Used to group and layout elements.
--- @param params tes3uiElement.createBlock.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createBlock(params) end

---Table parameter definitions for `tes3uiElement.createBlock`.
--- @class tes3uiElement.createBlock.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.

--- Creates a clickable button. Register the `mouseClick` event to capture a button press.
--- 
--- Button specific properties can be accessed through the `widget` property. The widget type for buttons is [`tes3uiButton`](https://mwse.github.io/MWSE/types/tes3uiButton/).
--- @param params tes3uiElement.createButton.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `text`: string? — *Optional*. The text to add to the button. It will highlight on mouseover like a text select widget.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createButton(params) end

---Table parameter definitions for `tes3uiElement.createButton`.
--- @class tes3uiElement.createButton.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field text string? *Optional*. The text to add to the button. It will highlight on mouseover like a text select widget.

--- Creates a clickable button, whose text changes linearly through options as it is clicked. Register the `valueChanged` event for when the option is cycled or changed via script.
--- 
--- Button specific properties can be accessed through the `widget` property. The widget type for buttons is [`tes3uiCycleButton`](https://mwse.github.io/MWSE/types/tes3uiCycleButton/).
--- @param params tes3uiElement.createCycleButton.params This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `options`: tes3uiCycleButtonOption[] — An array of options for the button to cycle through. At minimum the option must have a `text` property defined, to show on the button. If a `value` is provided, it can be accessed through the `.widget`'s `.value` property.
--- 
--- `index`: number? — *Optional*. The index selected by default.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createCycleButton(params) end

---Table parameter definitions for `tes3uiElement.createCycleButton`.
--- @class tes3uiElement.createCycleButton.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field options tes3uiCycleButtonOption[] An array of options for the button to cycle through. At minimum the option must have a `text` property defined, to show on the button. If a `value` is provided, it can be accessed through the `.widget`'s `.value` property.
--- @field index number? *Optional*. The index selected by default.

--- Creates a textured horizontal divider line, as used in the magic and stat menus. Scales automatically to the container width.
--- @param params tes3uiElement.createDivider.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createDivider(params) end

---Table parameter definitions for `tes3uiElement.createDivider`.
--- @class tes3uiElement.createDivider.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.

--- Creates a horizontal quantity indicator bar.
--- 
--- Fillbar specific properties can be accessed through the `widget` property. The widget type for fillbars is [`tes3uiFillBar`](https://mwse.github.io/MWSE/types/tes3uiFillBar/).
--- @param params tes3uiElement.createFillBar.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `current`: number? — *Optional*. The current value of the fillbar.
--- 
--- `max`: number? — *Optional*. The maximum value of the fillbar.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createFillBar(params) end

---Table parameter definitions for `tes3uiElement.createFillBar`.
--- @class tes3uiElement.createFillBar.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field current number? *Optional*. The current value of the fillbar.
--- @field max number? *Optional*. The maximum value of the fillbar.

--- Creates a horizontally scrolling pane.
--- 
--- Scroll pane specific properties can be accessed through the `widget` property. The widget type for scroll panes is [`tes3uiScrollPane`](https://mwse.github.io/MWSE/types/tes3uiScrollPane/).
--- @param params tes3uiElement.createHorizontalScrollPane.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createHorizontalScrollPane(params) end

---Table parameter definitions for `tes3uiElement.createHorizontalScrollPane`.
--- @class tes3uiElement.createHorizontalScrollPane.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.

--- Creates a clickable text, colored as a link. When the link is clicked, a URL is opened in the player's browser. If the `confirm` property is set, a confirmation prompt is opened first.
--- 
--- Hyperlink-specific properties can be accessed through the `widget` property. The widget type for hyperlinks is [`tes3uiHyperlink`](https://mwse.github.io/MWSE/types/tes3uiHyperlink/).
--- @param params tes3uiElement.createHyperlink.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `text`: string — The text to add to the hyperlink.
--- 
--- `url`: string — The URL to open when the text is clicked.
--- 
--- `confirm`: boolean? — *Default*: `true`. If true, a confirmation prompt will be shown before any URL is opened.
--- @return tes3uiElement element No description yet available.
function tes3uiElement:createHyperlink(params) end

---Table parameter definitions for `tes3uiElement.createHyperlink`.
--- @class tes3uiElement.createHyperlink.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field text string The text to add to the hyperlink.
--- @field url string The URL to open when the text is clicked.
--- @field confirm boolean? *Default*: `true`. If true, a confirmation prompt will be shown before any URL is opened.

--- Creates a text area with clickable words as links. Usage is still under research.
--- @param params tes3uiElement.createHypertext.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createHypertext(params) end

---Table parameter definitions for `tes3uiElement.createHypertext`.
--- @class tes3uiElement.createHypertext.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.

--- Creates an image element from a texture file. The texture must have power-of-2 dimensions (i.e. 16, 32, 64, 128, 256, 512, 1024); the final display size can be trimmed by setting width and height.
--- @param params tes3uiElement.createImage.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `path`: string — An image path. This path is relative to `Data Files`.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createImage(params) end

---Table parameter definitions for `tes3uiElement.createImage`.
--- @class tes3uiElement.createImage.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field path string An image path. This path is relative to `Data Files`.

--- Creates an interactive button composed of images for the **idle**, **over**, and **pressed** states. The texture must have power-of-2 dimensions (i.e. 16, 32, 64, 128, 256, 512, 1024); the final display size can be trimmed by setting width and height.
--- @param params tes3uiElement.createImageButton.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `idle`: string — The path to the idle image. This path is relative to `Data Files`.
--- 
--- `over`: string — The path to the mouse hover image. This path is relative to `Data Files`.
--- 
--- `pressed`: string — The path to the mouse pressed image. This path is relative to `Data Files`.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createImageButton(params) end

---Table parameter definitions for `tes3uiElement.createImageButton`.
--- @class tes3uiElement.createImageButton.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field idle string The path to the idle image. This path is relative to `Data Files`.
--- @field over string The path to the mouse hover image. This path is relative to `Data Files`.
--- @field pressed string The path to the mouse pressed image. This path is relative to `Data Files`.

--- Creates a text label. It defaults to displaying all text on a single line. To get a multi-line label, set `wrap_text` to `true`. The element is created with `autoWidth` and `autoHeight` turned on.
--- @param params tes3uiElement.createLabel.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `text`: string? — *Default*: `(nil)`. The text to display.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createLabel(params) end

---Table parameter definitions for `tes3uiElement.createLabel`.
--- @class tes3uiElement.createLabel.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field text string? *Default*: `(nil)`. The text to display.

--- Creates a NIF model from a file. Still under research.
--- @param params tes3uiElement.createNif.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `text`: string — A model path. This path is relative to `Data Files`.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createNif(params) end

---Table parameter definitions for `tes3uiElement.createNif`.
--- @class tes3uiElement.createNif.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field text string A model path. This path is relative to `Data Files`.

--- Creates a multi-line text input element, with line wrapping on. To receive input the keyboard must be captured with `tes3ui.acquireTextInput(element)`. Read the input with the `text` property. Write an initial value to edit by setting the `text` property.
--- 
--- Paragraph input specific properties can be accessed through the `widget` property. The widget type for paragraph inputs is [`tes3uiParagraphInput`](https://mwse.github.io/MWSE/types/tes3uiParagraphInput/).
--- @param params tes3uiElement.createParagraphInput.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createParagraphInput(params) end

---Table parameter definitions for `tes3uiElement.createParagraphInput`.
--- @class tes3uiElement.createParagraphInput.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.

--- Creates a filled rectangle. The rectangle is displayed as filled with the element's colour. It supports alpha compositing.
--- @param params tes3uiElement.createRect.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `color`: tes3vector3|table|nil — *Optional*. The fill color for the element.
--- 
--- `randomizeColor`: boolean? — *Default*: `false`. If true, the creation color will be randomized.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createRect(params) end

---Table parameter definitions for `tes3uiElement.createRect`.
--- @class tes3uiElement.createRect.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field color tes3vector3|table|nil *Optional*. The fill color for the element.
--- @field randomizeColor boolean? *Default*: `false`. If true, the creation color will be randomized.

--- Creates a horizontal slider.
--- 
--- Slider specific properties can be accessed through the `widget` property. The widget type for sliders is [`tes3uiSlider`](https://mwse.github.io/MWSE/types/tes3uiSlider/).
--- @param params tes3uiElement.createSlider.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `current`: number — The current value of the slider.
--- 
--- `max`: number — The maximum value of the slider.
--- 
--- `step`: number? — *Default*: `1`. The change in value when clicking the left and right arrow buttons.
--- 
--- `jump`: number? — *Default*: `5`. The change in value when clicking into the empty areas next to the slider handle.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createSlider(params) end

---Table parameter definitions for `tes3uiElement.createSlider`.
--- @class tes3uiElement.createSlider.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field current number The current value of the slider.
--- @field max number The maximum value of the slider.
--- @field step number? *Default*: `1`. The change in value when clicking the left and right arrow buttons.
--- @field jump number? *Default*: `5`. The change in value when clicking into the empty areas next to the slider handle.

--- Creates a vertical slider.
--- 
--- Slider specific properties can be accessed through the `widget` property. The widget type for sliders is [`tes3uiSlider`](https://mwse.github.io/MWSE/types/tes3uiSlider/).
--- @param params tes3uiElement.createSliderVertical.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `current`: number — The current value of the slider.
--- 
--- `max`: number — The maximum value of the slider.
--- 
--- `step`: number? — *Default*: `1`. The change in value when clicking the left and right arrow buttons.
--- 
--- `jump`: number? — *Default*: `5`. The change in value when clicking into the empty areas next to the slider handle.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createSliderVertical(params) end

---Table parameter definitions for `tes3uiElement.createSliderVertical`.
--- @class tes3uiElement.createSliderVertical.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field current number The current value of the slider.
--- @field max number The maximum value of the slider.
--- @field step number? *Default*: `1`. The change in value when clicking the left and right arrow buttons.
--- @field jump number? *Default*: `5`. The change in value when clicking into the empty areas next to the slider handle.

--- Creates a single line text input element. To receive input the keyboard must be captured with `tes3ui.acquireTextInput(element)`. Read the input with the `text` property. Write an initial value to display by setting the `text` property; that value will be cleared on the first keypress.
--- 
--- Text input specific properties can be accessed through the `widget` property. The widget type for text inputs is [`tes3uiTextInput`](https://mwse.github.io/MWSE/types/tes3uiTextInput/).
--- @param params tes3uiElement.createTextInput.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `text`: string? — *Optional*. The initial text to use for the input.
--- 
--- `placeholderText`: string? — *Optional*. Placeholder text for the input. If the element is ever made empty, this will be displayed instead in the disabled text color.
--- 
--- `numeric`: boolean? — *Default*: `false`. If true, only numbers can be put into the input. The text value of the element will still be a string, and need to be converted using `tonumber`.
--- 
--- `autoFocus`: boolean? — *Default*: `false`. If true, the input will be automatically focused after creation.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createTextInput(params) end

---Table parameter definitions for `tes3uiElement.createTextInput`.
--- @class tes3uiElement.createTextInput.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field text string? *Optional*. The initial text to use for the input.
--- @field placeholderText string? *Optional*. Placeholder text for the input. If the element is ever made empty, this will be displayed instead in the disabled text color.
--- @field numeric boolean? *Default*: `false`. If true, only numbers can be put into the input. The text value of the element will still be a string, and need to be converted using `tonumber`.
--- @field autoFocus boolean? *Default*: `false`. If true, the input will be automatically focused after creation.

--- Creates a selectable line of text, with configurable hover, click, and disabled colours. Can be used to create a list box by placing them in a ScrollPane.
--- 
--- Text select specific properties can be accessed through the `widget` property. The widget type for text selects is [`tes3uiTextSelect`](https://mwse.github.io/MWSE/types/tes3uiTextSelect/).
--- @param params tes3uiElement.createTextSelect.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- 
--- `text`: string? — *Optional*. The text to display.
--- 
--- `state`: number? — *Default*: `tes3.uiState.normal`. The initial interaction state.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createTextSelect(params) end

---Table parameter definitions for `tes3uiElement.createTextSelect`.
--- @class tes3uiElement.createTextSelect.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.
--- @field text string? *Optional*. The text to display.
--- @field state number? *Default*: `tes3.uiState.normal`. The initial interaction state.

--- Creates a styled thin border element. Any content should be created as children of this border.
--- @param params tes3uiElement.createThinBorder.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createThinBorder(params) end

---Table parameter definitions for `tes3uiElement.createThinBorder`.
--- @class tes3uiElement.createThinBorder.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.

--- Creates a vertically scrolling pane. Useful as a list box.
--- 
--- Scroll pane specific properties can be accessed through the `widget` property. The widget type for scroll panes is [`tes3uiScrollPane`](https://mwse.github.io/MWSE/types/tes3uiScrollPane/).
--- @param params tes3uiElement.createVerticalScrollPane.params? This table accepts the following values:
--- 
--- `id`: string|number|nil — *Optional*. An identifier to help find this element later.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:createVerticalScrollPane(params) end

---Table parameter definitions for `tes3uiElement.createVerticalScrollPane`.
--- @class tes3uiElement.createVerticalScrollPane.params
--- @field id string|number|nil *Optional*. An identifier to help find this element later.

--- Deletes an element and all its child elements. If any element is bound to text input by `tes3ui.acquireTextInput`_, the input is automatically released.
function tes3uiElement:destroy() end

--- Deletes all the child elements of this element. If any element is bound to text input by `tes3ui.acquireTextInput`_, the input is automatically released.
function tes3uiElement:destroyChildren() end

--- Finds a child element matching the `id` argument. Searches children recursively. Returns the first child element with a matching id, or `nil` if no match found.
--- @param id string|number The id to search for.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:findChild(id) end

--- Forwards an event to the original Morrowind event handler, using this element as a source. This may be optionally called at any point in a callback. Note that handler may or may not destroy the event widget or the menu, so you should know how it behaves before accessing any elements after a callback. 
--- @param id tes3uiEvent The original UI event.
function tes3uiElement:forwardEvent(id) end

--- Returns the descendant element that creation functions used on this element will place children into, or the calling element if there is no specific descendant for children.
--- 
--- 	Some widgets like ScrollPanes are built of multiple layers of elements. When an element is created in a complex widget, it is automatically placed as a child of a content element, but other functions do not access this content element directly. This function finds this content container for any element, so that changing layout and accessing children is possible. For simple elements, the calling element will be returned so that there is always a valid container element.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:getContentElement() end

--- Gets an arbitrary lua value from the UI element. Each element has the capability to store keyed lua data, as if it were a table, using this function and `setLuaData`.
--- @param key string The key for the lua data.
--- @return any result No description yet available.
function tes3uiElement:getLuaData(key) end

--- Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function gets a property as a boolean value, defaulting to false if the property was not set.
--- @param property number|string The property to get.
--- @return boolean value The value of the property, defaulting to false if the property was not set.
function tes3uiElement:getPropertyBool(property) end

--- Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function gets a property as a number value, defaulting to `0` if the property was not set. This function can be dangerous to use, and can lead to crashes if not properly understood.
--- @param property number|string The property to get.
--- @return number value The value of the property, defaulting to `0` if the property was not set.
function tes3uiElement:getPropertyCallback(property) end

--- Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function gets a property as a floating-point value, defaulting to `0` if the property was not set.
--- @param property number|string The property to get.
--- @return number value The value of the property, defaulting to `0` if the property was not set.
function tes3uiElement:getPropertyFloat(property) end

--- Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function gets a property as an integer value, defaulting to `0` if the property was not set.
--- @param property number|string The property to get.
--- @return number value The value of the property, defaulting to `0` if the property was not set.
function tes3uiElement:getPropertyInt(property) end

--- Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function gets a property as an object value, defaulting to `nil` if the property was not set. This function can be dangerous to use, and can lead to crashes if not properly understood.
--- @param property number|string The property to get.
--- @param typeCast string|nil *Default*: `tes3baseObject`. The casting of the property to get.
--- @return number value The value of the property, defaulting to `nil` if the property was not set.
function tes3uiElement:getPropertyObject(property, typeCast) end

--- Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function gets a property whose value is, itself, a property, defaulting to `0` if the property was not set.
--- @param property number|string The property to get.
--- @return number value The value of the property, defaulting to `0` if the property was not set.
function tes3uiElement:getPropertyProperty(property) end

--- Finds the parent menu containing the element. Useful for finding the correct menu to run layout updates on.
--- @return tes3uiElement result No description yet available.
function tes3uiElement:getTopLevelMenu() end

--- Alias for `:getTopLevelMenu()`.
--- @deprecated
--- @return tes3uiElement result No description yet available.
function tes3uiElement:getTopLevelParent() end

--- Restores the menu's position and size information from the Morrowind.ini file. This may only be called on top-level parents.
function tes3uiElement:loadMenuPosition() end

--- Copies this element to a new parent, then destroys this element. This function can have unintended consequences. The specifics of what exact elements are being copied is important.
--- @param to tes3uiElement Where to create the copy.
--- @return tes3uiElement copy The created copy.
function tes3uiElement:move(to) end

--- Sets an `event` handler, which can add or override an existing event handler. The use of `registerBefore` or `registerAfter` is recommended if you do not want to replace the existing event handler. The eventID can be a standard `event` name, or an event specific to an element class. These can be accessed through [`tes3.uiEvent`](https://mwse.github.io/MWSE/references/ui-events/) for convenience. The callback receives an argument with the event data. See below for details.
--- 	
--- The original Morrowind callback is captured and can be invoked with the `forwardEvent` method on the event argument. If there is an existing Lua callback, it is replaced.
--- 
--- 	Standard events:
--- 		**mouseLeave**
--- 			Mouse cursor moving outside an element. Triggers once.
--- 		**mouseOver**
--- 			Mouse cursor moving over an element. Triggers once.
--- 		**mouseDown**
--- 			Left mouse button down over an element.
--- 		**mouseClick**
--- 			Left mouse button up over an element, after a mouseDown over the element.
--- 		**mouseScrollUp**
--- 			..
--- 		**mouseScrollDown**
--- 			Mouse wheel scrolling.
--- 		**mouseDoubleClick**
--- 			Standard double-click.
--- 		**mouseStillIdle**
--- 			Mouse cursor positioned outside an element. Triggers every frame.
--- 		**mouseStillOver**
--- 			Mouse cursor positioned over an element. Triggers every frame.
--- 		**mouseStillPressed**
--- 			Mouse cursor positioned over an element, after a mouseDown over the element. Triggers every frame.
--- 		**mouseStillPressedOutside**
--- 			Apparently not working in the engine. Mouse cursor positioned outside an element, after a mouseDown over the element. Triggers every frame.
--- 		**mouseRelease**
--- 			Left mouse button up over an element.
--- 		**keyPress**
--- 			A raw key press.
--- 		**keyEnter**
--- 			The Return key is pressed.
--- 		**help**
--- 			On mouseover, but also marking the element as having a tooltip. Create a tooltip within the callback using the `tes3ui.createTooltipMenu` function.
--- 		**focus**
--- 			When a menu is clicked on, and moved on top of other menus.
--- 		**unfocus**
--- 			Just before another menu is clicked on, or a widget in that menu receives an event, or when the menu mode is toggled off. You may return false from this event to prevent the menu from being deselected, and to prevent leaving menu mode.
--- 		**preUpdate**
--- 			Before the menu layout is updated.
--- 		**update**
--- 			After the menu layout is updated.
--- 		**destroy**
--- 			When the UI element is destroyed, before any data or children are destroyed.
--- 
--- 	Widget-specific events:
--- 		Slider:
--- 			**PartScrollBar_changed**
--- 				Triggers on value change; moving the slider is not enough if the value is the same.
--- 
--- 
--- Event forwarding
--- -------------------------------------------------------------------------------
--- 
--- The original Morrowind event handler is saved when you first register an event. It may be optionally invoked with the `forwardEvent` method.  Note that handler may or may not destroy the event widget or the menu, so you should know how it behaves before accessing any elements after a callback. 
--- 
--- **Example**
--- 
--- 	local function onClick(e)
--- 		-- pre-event code
--- 		e.source:forwardEvent(e)
--- 		-- post-event code
--- 	end
--- 	
--- 	local button = menu:findChild("MenuExample_Ok")
--- 	button:register("mouseClick", onClick)
--- 
--- 
--- Event handler
--- -------------------------------------------------------------------------------
--- 
--- The standard type signature for events.
--- 
--- 	`boolean`_ eventHandler(**EventData** e)
--- 		Returns: `optional`
--- 			Returning `false` may cancel an interaction for certain events. e.g. unfocus
--- 	
--- 		EventData:
--- 			**source** (`Element`_)
--- 				The source element of the event.
--- 			
--- 			**id** (`number`_)
--- 				The numeric id of the event type.
--- 		
--- 			**widget** (`Element`_)
--- 				The widget element that the source belongs to, if the element is a sub-part of a widget. May not be accurate if the element is not a sub-part.
--- 			
--- 			**data0** (`number`_)
--- 				..
--- 				
--- 			**data1** (`number`_)
--- 				Event-specific raw data values. For mouse events, these are the screen X and Y coordinates of the pointer. For keyboard events, data0 is the `scan code`_.
--- 			
--- 			**relativeX** (`number`_)
--- 				..
--- 				
--- 			**relativeY** (`number`_)
--- 				For mouse events only. X and Y coordinates of the pointer relative to the top-left of the element.
--- @param eventID string The event id. Maps to values in [`tes3.uiEvent`](https://mwse.github.io/MWSE/references/ui-events/).
--- @param callback function The callback function.
function tes3uiElement:register(eventID, callback) end

--- Sets an `event` handler to run after any existing event handler on the element. Can be any event usable with `register`. The callback receives an argument with the event data. See `register` for details.
--- @param eventID string The event id.
--- @param callback function The callback function.
function tes3uiElement:registerAfter(eventID, callback) end

--- Sets an `event` handler to run before any existing event handler on the element. Can be any event usable with `register`. The callback receives an argument with the event data. See `register` for details.
--- @param eventID string The event id.
--- @param callback function The callback function.
function tes3uiElement:registerBefore(eventID, callback) end

--- 	Moves the layout order of the children of this element. `count` elements are taken from starting child `Element`_ or index (0-based) `moveFrom`, and moved before the child `Element`_ or index (0-based) `insertBefore`. If `count` is -1, all children after `moveFrom` are moved. If any index is a negative number, then the index represents a distance from the end of the child list.
--- 
--- 	Returns `true` if the operation succeeded, or `false` if at least one argument was invalid.
--- @param insertBefore tes3uiElement|number The insertion point (or its 0-based child index).
--- @param moveFrom tes3uiElement|number The first child (or 0-based child index) to be moved.
--- @param count number The number of child elements to move.
--- @return boolean result No description yet available.
function tes3uiElement:reorderChildren(insertBefore, moveFrom, count) end

--- Saves the menu's position and size information to the Morrowind.ini file. This may only be called on top-level parents. Note that most menus save their position automatically.
function tes3uiElement:saveMenuPosition() end

--- Sets an arbitrary lua value for the UI element. Each element has the capability to store keyed lua data, as if it were a table, using this function and `getLuaData`.
--- @param key string The key for the lua data.
--- @param value any The value to set.
function tes3uiElement:setLuaData(key, value) end

--- Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function sets a property to a boolean value.
--- @param property number|string The property to set.
--- @param value boolean The value to set.
function tes3uiElement:setPropertyBool(property, value) end

--- Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function sets a property to a callback value, represented as a number. This function can be dangerous to use, and can lead to crashes if not properly understood.
--- @param property number|string The property to set.
--- @param value number The value to set.
function tes3uiElement:setPropertyCallback(property, value) end

--- Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function sets a property to a floating-point value.
--- @param property number|string The property to set.
--- @param value number The value to set.
function tes3uiElement:setPropertyFloat(property, value) end

--- Properties are extra variables attached to an element. Morrowind uses these to bind variables to the UI, and they can be useful for element class-specific properties. This function sets a property to an integer value.
--- @param property number|string The property to set.
--- @param value number The value to set.
function tes3uiElement:setPropertyInt(property, value) end

--- Sets a property value with `prop` as the property key. Properties are named variables attached to an element. Gets a property value with `propName` as the property key. Morrowind uses these to bind variables to the UI. Useful for element class-specific properties.
--- @param property number|string The property to get.
--- @param value object The value to set.
function tes3uiElement:setPropertyObject(property, value) end

--- Properties are named variables attached to an element. Sets a property value with `property` as the property key. Morrowind uses these to bind variables to the UI. Useful for element class-specific properties. This function sets a property whose value is, itself, a property.
--- @param property number|string The property to get.
--- @param value number|string The value to set.
function tes3uiElement:setPropertyProperty(property, value) end

--- Reorders the element's children given a sorting function.
--- @param sortFunction function The function to sort with. Like most sorting functions, this is given two arguments to compare.
function tes3uiElement:sortChildren(sortFunction) end

--- Triggers a UI event on an element, either using supplied event data, or by constructing new event data using `eventName`. `eventName` is the same as used in `register`.
--- @param eventID tes3uiEvent|string The event, or event ID.
function tes3uiElement:triggerEvent(eventID) end

--- Unregisters an `event` handler.
--- @param eventID string The event id.
--- @return boolean wasUnregistered No description yet available.
function tes3uiElement:unregister(eventID) end

--- Unregisters a function previously registered using `:registerAfter`.
--- @param eventID string The event id.
--- @param callback function The callback function.
--- @return boolean wasUnregistered No description yet available.
function tes3uiElement:unregisterAfter(eventID, callback) end

--- Unregisters a function previously registered using `:registerBefore`.
--- @param eventID string The event id.
--- @param callback function The callback function.
--- @return boolean wasUnregistered No description yet available.
function tes3uiElement:unregisterBefore(eventID, callback) end

--- Updates a menu's element layout and all child elements. Needs to be called on a top level menu when any elements contained in it are added, moved or resized.
function tes3uiElement:updateLayout() end

