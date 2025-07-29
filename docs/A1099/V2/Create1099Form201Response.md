# AvalaraSdk::A1099::V2::Create1099Form201Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::Create1099Form201Response.openapi_one_of
# =>
# [
#   :'Form1042SListItemResponse',
#   :'Form1095BListItemResponse',
#   :'Form1099BaseResponse',
#   :'Form1099KListItemResponse',
#   :'Form1099MiscListItemResponse',
#   :'Form1099NecListItemResponse',
#   :'Form1099RListItemResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::Create1099Form201Response.build(data)
# => #<Form1042SListItemResponse:0x00007fdd4aab02a0>

AvalaraSdk::A1099::V2::Create1099Form201Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Form1042SListItemResponse`
- `Form1095BListItemResponse`
- `Form1099BaseResponse`
- `Form1099KListItemResponse`
- `Form1099MiscListItemResponse`
- `Form1099NecListItemResponse`
- `Form1099RListItemResponse`
- `nil` (if no type matches)

