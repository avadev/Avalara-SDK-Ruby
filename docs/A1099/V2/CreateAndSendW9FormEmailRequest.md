# AvalaraSdk::A1099::V2::CreateAndSendW9FormEmailRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::CreateAndSendW9FormEmailRequest.openapi_one_of
# =>
# [
#   :'W4FormMinimalRequest',
#   :'W8BenEFormMinimalRequest',
#   :'W8BenFormMinimalRequest',
#   :'W8ImyFormMinimalRequest',
#   :'W9FormMinimalRequest'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::CreateAndSendW9FormEmailRequest.build(data)
# => #<W4FormMinimalRequest:0x00007fdd4aab02a0>

AvalaraSdk::A1099::V2::CreateAndSendW9FormEmailRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `W4FormMinimalRequest`
- `W8BenEFormMinimalRequest`
- `W8BenFormMinimalRequest`
- `W8ImyFormMinimalRequest`
- `W9FormMinimalRequest`
- `nil` (if no type matches)

