# niStringExtraData

A simple extra data that contains a string.

This type inherits the following: [niExtraData](../../types/niExtraData), [niObject](../../types/niObject)
## Properties

### `genericData`

*Read-only*. Generic data held in the extra data. This is not used if a subtype of extra data is used.

**Returns**:

* `result` (number[])

***

### `next`

The next extra data available on the object.

**Returns**:

* `result` ([niExtraData](../../types/niExtraData))

***

### `refCount`

*Read-only*. The number of references that exist for this object. When this value reaches zero, the object will be deleted.

**Returns**:

* `result` (number)

***

### `references`

*Read-only*. The number of references that exist for the given object. When this value hits zero, the object's memory is freed.

**Returns**:

* `result` (string)

***

### `RTTI`

*Read-only*. The runtime type information for this object. This is an alias for the `.runTimeTypeInformation` property.

**Returns**:

* `result` ([niRTTI](../../types/niRTTI))

***

### `runTimeTypeInformation`

*Read-only*. The runtime type information for this object.

**Returns**:

* `result` ([niRTTI](../../types/niRTTI))

***

### `string`

The string kept on the niStringExtraData.

**Returns**:

* `result` (string)

***

## Methods

### `clone`

Creates a copy of this object.

```lua
local result = myObject:clone()
```

**Returns**:

* `result` ([niObject](../../types/niObject))

***

### `isInstanceOfType`

Determines if the object is of a given type, or of a type derived from the given type. Types can be found in the tes3.niType table.

```lua
local result = myObject:isInstanceOfType(type)
```

**Parameters**:

* `type` (number)

**Returns**:

* `result` (boolean)

***

### `isOfType`

Determines if the object is of a given type. Types can be found in the tes3.niType table.

```lua
local result = myObject:isOfType(type)
```

**Parameters**:

* `type` (number)

**Returns**:

* `result` (boolean)

***

### `saveBinary`

Serializes the object, and writes it to the given file.

```lua
local success = myObject:saveBinary(path)
```

**Parameters**:

* `path` (string): The path to write the file at, relative to the Morrowind installation folder.

**Returns**:

* `success` (boolean): If true the object was successfully serialized.

***

## Functions

### `new`

Creates an niStringExtraData.

```lua
local extraData = niStringExtraData.new(string)
```

**Parameters**:

* `string` (string): The initial value for the extra data to store.

**Returns**:

* `extraData` ([niStringExtraData](../../types/niStringExtraData))

***

