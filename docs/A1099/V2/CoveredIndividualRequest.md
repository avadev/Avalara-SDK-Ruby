# AvalaraSdk::A1099::V2::CoveredIndividualRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | Covered individual&#39;s first name | [optional] |
| **middle_name** | **String** | Covered individual&#39;s middle name | [optional] |
| **last_name** | **String** | Covered individual&#39;s last name | [optional] |
| **name_suffix** | **String** | Covered individual&#39;s name suffix | [optional] |
| **tin** | **String** | Covered individual&#39;s TIN (SSN or ITIN) | [optional] |
| **birth_date** | **Time** | Covered individual&#39;s date of birth | [optional] |
| **covered_month_indicator0** | **Boolean** | Coverage indicator for all 12 months | [optional] |
| **covered_month_indicator1** | **Boolean** | Coverage indicator for January | [optional] |
| **covered_month_indicator2** | **Boolean** | Coverage indicator for February | [optional] |
| **covered_month_indicator3** | **Boolean** | Coverage indicator for March | [optional] |
| **covered_month_indicator4** | **Boolean** | Coverage indicator for April | [optional] |
| **covered_month_indicator5** | **Boolean** | Coverage indicator for May | [optional] |
| **covered_month_indicator6** | **Boolean** | Coverage indicator for June | [optional] |
| **covered_month_indicator7** | **Boolean** | Coverage indicator for July | [optional] |
| **covered_month_indicator8** | **Boolean** | Coverage indicator for August | [optional] |
| **covered_month_indicator9** | **Boolean** | Coverage indicator for September | [optional] |
| **covered_month_indicator10** | **Boolean** | Coverage indicator for October | [optional] |
| **covered_month_indicator11** | **Boolean** | Coverage indicator for November | [optional] |
| **covered_month_indicator12** | **Boolean** | Coverage indicator for December | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::CoveredIndividualRequest.new(
  first_name: null,
  middle_name: null,
  last_name: null,
  name_suffix: null,
  tin: null,
  birth_date: null,
  covered_month_indicator0: null,
  covered_month_indicator1: null,
  covered_month_indicator2: null,
  covered_month_indicator3: null,
  covered_month_indicator4: null,
  covered_month_indicator5: null,
  covered_month_indicator6: null,
  covered_month_indicator7: null,
  covered_month_indicator8: null,
  covered_month_indicator9: null,
  covered_month_indicator10: null,
  covered_month_indicator11: null,
  covered_month_indicator12: null
)
```

