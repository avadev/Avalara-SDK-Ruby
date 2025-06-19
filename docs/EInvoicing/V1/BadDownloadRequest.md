# AvalaraSdk::EInvoicing::V1::BadDownloadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | The three-digit HTTP error code for the bad request | [optional] |
| **message** | **String** | A message explaining the bad request | [optional] |
| **supported_accept_headers** | **Object** | A message explaining the bad request | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::BadDownloadRequest.new(
  error: 406,
  message: Incorrect Accept header.,
  supported_accept_headers: [&quot;application/vnd.oasis.ubl+xml&quot;,&quot;application/pdf&quot;]
)
```

