# AvalaraSdk::A1099::V2::CompanyCreateUpdateRequestModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **telephone** | **String** |  | [optional] |
| **tin** | **String** |  | [optional] |
| **dba_name** | **String** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **do_tin_match** | **Boolean** |  | [optional] |
| **group_name** | **String** |  | [optional] |
| **foreign_province** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **resend_requests** | **Boolean** |  | [optional] |
| **resend_interval_days** | **Integer** |  | [optional] |
| **max_reminder_attempts** | **Integer** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::CompanyCreateUpdateRequestModel.new(
  name: null,
  email: null,
  address: null,
  city: null,
  state: null,
  zip: null,
  telephone: null,
  tin: null,
  dba_name: null,
  reference_id: null,
  do_tin_match: null,
  group_name: null,
  foreign_province: null,
  country_code: null,
  resend_requests: null,
  resend_interval_days: null,
  max_reminder_attempts: null
)
```

