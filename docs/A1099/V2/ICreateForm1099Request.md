# AvalaraSdk::A1099::V2::ICreateForm1099Request

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::ICreateForm1099Request.openapi_one_of
# =>
# [
#   :'Form1099DivRequest',
#   :'Form1099MiscRequest',
#   :'Form1099NecRequest'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::ICreateForm1099Request.build(data)
# => #<Form1099DivRequest:0x00007fdd4aab02a0>

AvalaraSdk::A1099::V2::ICreateForm1099Request.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Form1099DivRequest`
- `Form1099MiscRequest`
- `Form1099NecRequest`
- `nil` (if no type matches)

