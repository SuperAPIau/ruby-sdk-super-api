# SuperAPI::APIEntitiesAnnualPerformance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report** | **String** | Type of performance report |  |
| **growth_rate** | **Float** | Growth rate for the performance period |  |
| **growth_rate_type** | **String** | Identifies how the growth rate should be interpreted, ie: as a percentage.  Currently only percentage is used.  Other options may become available in the future. |  |
| **year** | **Integer** | Year of the performance period |  |

## Example

```ruby
require 'super-api'

instance = SuperAPI::APIEntitiesAnnualPerformance.new(
  report: daily,
  growth_rate: 0.3241,
  growth_rate_type: percentage,
  year: 2020
)
```

