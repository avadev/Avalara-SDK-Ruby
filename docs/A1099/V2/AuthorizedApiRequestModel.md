# AvalaraSdk::A1099::V2::AuthorizedApiRequestModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | The path and query of the API request you want to pre-authorize, omitting the leading /api/ | [optional] |
| **ttl** | **Integer** | Seconds until this AuthorizedApiRequest should expire, 3600 if omitted; values greater than 86400 will not be honored | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::AuthorizedApiRequestModel.new(
  path: form-pdf?filter[form_type_eq]&#x3D;1099-NEC&amp;filter[reference_id_eq]&#x3D;SE-02453450&amp;filter[tax_year_eq]&#x3D;2023,
  ttl: 3600
)
```

