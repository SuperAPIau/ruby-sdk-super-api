# SuperAPI::APIEntitiesPerformance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report** | **String** | Type of performance report |  |
| **date** | **Date** | Date of the performance period |  |
| **growth_rate** | **Float** | Growth rate for the performance period |  |
| **growth_rate_type** | **String** | Identifies how the growth rate should be interpreted, ie: as a percentage.  Currently only percentage is used.  Other options may become available in the future. |  |

## Example

```ruby
require 'super-api'

instance = SuperAPI::APIEntitiesPerformance.new(
  report: daily,
  date: Sat Jun 12 00:00:00 GMT 34,
  growth_rate: 0.3241,
  growth_rate_type: percentage
)
```

