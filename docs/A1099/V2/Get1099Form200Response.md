# AvalaraSdk::A1099::V2::Get1099Form200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::Get1099Form200Response.openapi_one_of
# =>
# [
#   :'Form1095B',
#   :'Form1099K',
#   :'Form1099Misc',
#   :'Form1099Nec',
#   :'Form1099R'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::Get1099Form200Response.build(data)
# => #<Form1095B:0x00007fdd4aab02a0>

AvalaraSdk::A1099::V2::Get1099Form200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Form1095B`
- `Form1099K`
- `Form1099Misc`
- `Form1099Nec`
- `Form1099R`
- `nil` (if no type matches)

