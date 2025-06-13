# AvalaraSdk::A1099::V2::ErrorModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | HTTP error code in 4xx or 5xx. | [optional] |
| **status** | **String** | HTTP error code in 4xx or 5xx. | [optional] |
| **title** | **String** | Description of the HTTP error code. | [optional] |
| **detail** | **String** | Detailed error message. | [optional] |
| **instance** | **String** | Error code. | [optional] |
| **source** | **Object** | Cause of error. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::ErrorModel.new(
  type: https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/400,
  status: 400,
  title: Bad request,
  detail: ,
  instance: /issuers/12345,
  source: 
)
```

