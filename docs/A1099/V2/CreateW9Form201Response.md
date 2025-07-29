# AvalaraSdk::A1099::V2::CreateW9Form201Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::CreateW9Form201Response.openapi_one_of
# =>
# [
#   :'W4FormResponse',
#   :'W8BenEFormResponse',
#   :'W8BenFormResponse',
#   :'W8ImyFormResponse',
#   :'W9FormResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::CreateW9Form201Response.build(data)
# => #<W4FormResponse:0x00007fdd4aab02a0>

AvalaraSdk::A1099::V2::CreateW9Form201Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `W4FormResponse`
- `W8BenEFormResponse`
- `W8BenFormResponse`
- `W8ImyFormResponse`
- `W9FormResponse`
- `nil` (if no type matches)

