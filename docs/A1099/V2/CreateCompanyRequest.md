# AvalaraSdk::A1099::V2::CreateCompanyRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::CreateCompanyRequest.openapi_one_of
# =>
# [
#   :'CompanyCreateUpdateRequestModel',
#   :'CompanyResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::CreateCompanyRequest.build(data)
# => #<CompanyCreateUpdateRequestModel:0x00007fdd4aab02a0>

AvalaraSdk::A1099::V2::CreateCompanyRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CompanyCreateUpdateRequestModel`
- `CompanyResponse`
- `nil` (if no type matches)

