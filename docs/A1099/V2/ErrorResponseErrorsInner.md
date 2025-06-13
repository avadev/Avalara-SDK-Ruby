# AvalaraSdk::A1099::V2::ErrorResponseErrorsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::ErrorResponseErrorsInner.openapi_one_of
# =>
# [
#   :'HttpValidationProblemDetails',
#   :'ProblemDetails'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::ErrorResponseErrorsInner.build(data)
# => #<HttpValidationProblemDetails:0x00007fdd4aab02a0>

AvalaraSdk::A1099::V2::ErrorResponseErrorsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `HttpValidationProblemDetails`
- `ProblemDetails`
- `nil` (if no type matches)

