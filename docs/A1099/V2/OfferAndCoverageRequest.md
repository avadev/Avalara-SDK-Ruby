# AvalaraSdk::A1099::V2::OfferAndCoverageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **String** | Month of coverage | [optional] |
| **offer_code** | **String** | Offer of coverage code | [optional] |
| **share** | **Float** | Employee required contribution share | [optional] |
| **safe_harbor_code** | **String** | Safe harbor code | [optional] |
| **zip_code** | **String** | ZIP code for coverage area | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::OfferAndCoverageRequest.new(
  month: null,
  offer_code: null,
  share: null,
  safe_harbor_code: null,
  zip_code: null
)
```

