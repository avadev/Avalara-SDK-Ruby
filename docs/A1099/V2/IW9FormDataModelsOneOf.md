# AvalaraSdk::A1099::V2::IW9FormDataModelsOneOf

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::IW9FormDataModelsOneOf.openapi_one_of
# =>
# [
#   :'W4FormDataModel',
#   :'W8BenFormDataModel',
#   :'W8BeneFormDataModel',
#   :'W8ImyFormDataModel',
#   :'W9FormDataModel'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::IW9FormDataModelsOneOf.build(data)
# => #<W4FormDataModel:0x00007fdd4aab02a0>

AvalaraSdk::A1099::V2::IW9FormDataModelsOneOf.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `W4FormDataModel`
- `W8BenFormDataModel`
- `W8BeneFormDataModel`
- `W8ImyFormDataModel`
- `W9FormDataModel`
- `nil` (if no type matches)

