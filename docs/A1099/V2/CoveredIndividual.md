# AvalaraSdk::A1099::V2::CoveredIndividual

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Covered individual&#39;s ID | [optional][readonly] |
| **first_name** | **String** | Covered individual&#39;s first name |  |
| **middle_name** | **String** | Covered individual&#39;s middle name | [optional] |
| **last_name** | **String** | Covered individual&#39;s last name |  |
| **name_suffix** | **String** | Covered individual&#39;s name suffix | [optional] |
| **tin** | **String** | Covered individual&#39;s Federal Tax Identification Number (TIN).. SSN or ITIN. Required unless unavailable. | [optional] |
| **birth_date** | **Date** | Covered individual&#39;s date of birth - Required when SSN is missing. | [optional] |
| **covered_january** | **Boolean** | Coverage indicator for January | [optional] |
| **covered_february** | **Boolean** | Coverage indicator for February | [optional] |
| **covered_march** | **Boolean** | Coverage indicator for March | [optional] |
| **covered_april** | **Boolean** | Coverage indicator for April | [optional] |
| **covered_may** | **Boolean** | Coverage indicator for May | [optional] |
| **covered_june** | **Boolean** | Coverage indicator for June | [optional] |
| **covered_july** | **Boolean** | Coverage indicator for July | [optional] |
| **covered_august** | **Boolean** | Coverage indicator for August | [optional] |
| **covered_september** | **Boolean** | Coverage indicator for September | [optional] |
| **covered_october** | **Boolean** | Coverage indicator for October | [optional] |
| **covered_november** | **Boolean** | Coverage indicator for November | [optional] |
| **covered_december** | **Boolean** | Coverage indicator for December | [optional] |

## Example

```ruby
require 'avalara_sdk'

instance = AvalaraSdk::A1099::V2::CoveredIndividual.new(
  id: null,
  first_name: null,
  middle_name: null,
  last_name: null,
  name_suffix: null,
  tin: null,
  birth_date: null,
  covered_january: null,
  covered_february: null,
  covered_march: null,
  covered_april: null,
  covered_may: null,
  covered_june: null,
  covered_july: null,
  covered_august: null,
  covered_september: null,
  covered_october: null,
  covered_november: null,
  covered_december: null
)
```

