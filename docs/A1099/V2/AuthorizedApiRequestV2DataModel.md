# AvalaraSdk::A1099::V2::AuthorizedApiRequestV2DataModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **path** | **String** |  | [optional] |
| **expires_at** | **String** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::AuthorizedApiRequestV2DataModel.new(
  id: d0d09a2f-619e-4e9d-aae4-3311d9e0c67c,
  path: form-pdf?filter[form_type_eq]&#x3D;1099-NEC&amp;filter[reference_id_eq]&#x3D;SE-02453450&amp;filter[tax_year_eq]&#x3D;2024,
  expires_at: 2022-04-29T15:19:42.995-04:00
)
```

