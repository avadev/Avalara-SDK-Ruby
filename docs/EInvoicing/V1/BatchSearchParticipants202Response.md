# AvalaraSdk::EInvoicing::V1::BatchSearchParticipants202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the batch search. | [optional] |
| **status** | **String** | Status of the batch search. | [optional] |
| **message** | **String** | A message indicating that the batch search request has been accepted. | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::EInvoicing::V1::BatchSearchParticipants202Response.new(
  id: 2f5ea4b5-4dae-445a-b3e4-9f65a61eaa99,
  status: Accepted for processing,
  message: File uploaded successfully, you will be notified once the search results are ready.
)
```

