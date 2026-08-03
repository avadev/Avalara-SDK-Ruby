# AvalaraSdk::A1099::V2::RealTimeTinMatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tin_type** | **String** | The TIN type. | [optional] |
| **tin** | **String** | The TIN to be submitted to TIN match. | [optional] |
| **name** | **String** | The entity name to be submitted to TIN match. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::RealTimeTinMatchRequest.new(
  tin_type: null,
  tin: null,
  name: null
)
```

