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
#   :'Form1042S',
#   :'Form1095B',
#   :'Form1095C',
#   :'Form1099Div',
#   :'Form1099Int',
#   :'Form1099K',
#   :'Form1099Misc',
#   :'Form1099Nec',
#   :'Form1099R',
#   :'Form1099W2'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::Get1099Form200Response.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::Get1099Form200Response.openapi_discriminator_mapping
# =>
# {
#   :'1042-S' => :'Form1042S',
#   :'1095-B' => :'Form1095B',
#   :'1095-C' => :'Form1095C',
#   :'1099-DIV' => :'Form1099Div',
#   :'1099-INT' => :'Form1099Int',
#   :'1099-K' => :'Form1099K',
#   :'1099-MISC' => :'Form1099Misc',
#   :'1099-NEC' => :'Form1099Nec',
#   :'1099-R' => :'Form1099R',
#   :'W-2' => :'Form1099W2'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'avalara_sdk'

AvalaraSdk::A1099::V2::Get1099Form200Response.build(data)
# => #<Form1042S:0x00007fdd4aab02a0>

AvalaraSdk::A1099::V2::Get1099Form200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Form1042S`
- `Form1095B`
- `Form1095C`
- `Form1099Div`
- `Form1099Int`
- `Form1099K`
- `Form1099Misc`
- `Form1099Nec`
- `Form1099R`
- `Form1099W2`
- `nil` (if no type matches)

