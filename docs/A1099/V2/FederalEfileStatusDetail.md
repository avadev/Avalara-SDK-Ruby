# AvalaraSdk::A1099::V2::FederalEfileStatusDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **errors** | [**Array&lt;FederalEfileError&gt;**](FederalEfileError.md) | Errors the IRS returned for the form&#39;s most recent IRIS filing.  Present only when the filing was rejected or accepted with errors; omitted for forms not filed through IRIS. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::FederalEfileStatusDetail.new(
  time: null,
  status: accepted,
  errors: null
)
```

