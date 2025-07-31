# AvalaraSdk::A1099::V2::BulkUpsert1099FormsRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::BulkUpsert1099FormsRequest.openapi_one_of
# =>
# [
#   :'Form1042SList',
#   :'Form1095BList',
#   :'Form1095CList',
#   :'Form1099DivList',
#   :'Form1099KList',
#   :'Form1099MiscList',
#   :'Form1099NecList',
#   :'Form1099RList'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::BulkUpsert1099FormsRequest.build(data)
# => #<Form1042SList:0x00007fdd4aab02a0>

AvalaraSdk::A1099::V2::BulkUpsert1099FormsRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Form1042SList`
- `Form1095BList`
- `Form1095CList`
- `Form1099DivList`
- `Form1099KList`
- `Form1099MiscList`
- `Form1099NecList`
- `Form1099RList`
- `nil` (if no type matches)

