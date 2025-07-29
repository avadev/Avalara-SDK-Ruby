# AvalaraSdk::A1099::V2::CoveredIndividualReferenceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Covered individual ID | [optional] |
| **first_name** | **String** | Covered individual&#39;s first name | [optional] |
| **middle_name** | **String** | Covered individual&#39;s middle name | [optional] |
| **last_name** | **String** | Covered individual&#39;s last name | [optional] |
| **name_suffix** | **String** | Covered individual&#39;s name suffix | [optional] |
| **tin** | **String** | Covered individual&#39;s TIN (SSN or ITIN) | [optional] |
| **birth_date** | **Time** | Covered individual&#39;s date of birth | [optional] |
| **covered_month0** | **Boolean** | Coverage indicator for all 12 months | [optional] |
| **covered_month1** | **Boolean** | Coverage indicator for January | [optional] |
| **covered_month2** | **Boolean** | Coverage indicator for February | [optional] |
| **covered_month3** | **Boolean** | Coverage indicator for March | [optional] |
| **covered_month4** | **Boolean** | Coverage indicator for April | [optional] |
| **covered_month5** | **Boolean** | Coverage indicator for May | [optional] |
| **covered_month6** | **Boolean** | Coverage indicator for June | [optional] |
| **covered_month7** | **Boolean** | Coverage indicator for July | [optional] |
| **covered_month8** | **Boolean** | Coverage indicator for August | [optional] |
| **covered_month9** | **Boolean** | Coverage indicator for September | [optional] |
| **covered_month10** | **Boolean** | Coverage indicator for October | [optional] |
| **covered_month11** | **Boolean** | Coverage indicator for November | [optional] |
| **covered_month12** | **Boolean** | Coverage indicator for December | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::CoveredIndividualReferenceResponse.new(
  id: null,
  first_name: null,
  middle_name: null,
  last_name: null,
  name_suffix: null,
  tin: null,
  birth_date: null,
  covered_month0: null,
  covered_month1: null,
  covered_month2: null,
  covered_month3: null,
  covered_month4: null,
  covered_month5: null,
  covered_month6: null,
  covered_month7: null,
  covered_month8: null,
  covered_month9: null,
  covered_month10: null,
  covered_month11: null,
  covered_month12: null
)
```

