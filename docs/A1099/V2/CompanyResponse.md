# AvalaraSdk::A1099::V2::CompanyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **group_name** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **dba_name** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **foreign_province** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **telephone** | **String** |  | [optional] |
| **tin** | **String** |  | [optional] |
| **do_tin_match** | **Boolean** |  | [optional] |
| **resend_requests** | **Boolean** |  | [optional] |
| **resend_interval_days** | **Integer** |  | [optional] |
| **max_reminder_attempts** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::CompanyResponse.new(
  id: ,
  reference_id: ,
  group_name: ,
  name: ,
  dba_name: ,
  address: ,
  city: ,
  state: ,
  foreign_province: ,
  zip: ,
  country_code: ,
  email: ,
  telephone: ,
  tin: ,
  do_tin_match: null,
  resend_requests: null,
  resend_interval_days: null,
  max_reminder_attempts: null,
  created_at: null,
  updated_at: null
)
```

