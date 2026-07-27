# AvalaraSdk::A1099::V2::GetIssuer200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::GetIssuer200Response.openapi_one_of
# =>
# [
#   :'IssuerResponse',
#   :'IssuerWriteResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::GetIssuer200Response.build(data)
# => #<IssuerResponse:0x00007fdd4aab02a0>

AvalaraSdk::A1099::V2::GetIssuer200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `IssuerResponse`
- `IssuerWriteResponse`
- `nil` (if no type matches)

