# AvalaraSdk::A1099::V2::PaginatedQueryResultModelCompanyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recordset_count** | **Integer** |  | [optional] |
| **value** | [**Array&lt;CompanyResponse&gt;**](CompanyResponse.md) |  | [optional] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::PaginatedQueryResultModelCompanyResponse.new(
  recordset_count: null,
  value: [{&quot;id&quot;:&quot;&quot;,&quot;referenceId&quot;:&quot;&quot;,&quot;groupName&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;dbaName&quot;:&quot;&quot;,&quot;address&quot;:&quot;&quot;,&quot;city&quot;:&quot;&quot;,&quot;state&quot;:&quot;&quot;,&quot;foreignProvince&quot;:&quot;&quot;,&quot;zip&quot;:&quot;&quot;,&quot;countryCode&quot;:&quot;&quot;,&quot;email&quot;:&quot;&quot;,&quot;telephone&quot;:&quot;&quot;,&quot;tin&quot;:&quot;&quot;,&quot;doTinMatch&quot;:null,&quot;resendRequests&quot;:null,&quot;resendIntervalDays&quot;:null,&quot;maxReminderAttempts&quot;:null,&quot;createdAt&quot;:null,&quot;updatedAt&quot;:null}],
  next_link: null
)
```

