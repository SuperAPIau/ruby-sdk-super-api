# SuperAPI::APIEntitiesCumulativePerformance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report** | **String** | Type of performance report |  |
| **growth_rate** | **Float** | Growth rate for the performance period |  |
| **growth_rate_type** | **String** | Identifies how the growth rate should be interpreted, ie: as a percentage.  Currently only percentage is used.  Other options may become available in the future. |  |
| **start_date** | **Date** | Start date of the cumulative performance period.  This may differ from the requested start date if the requested period is longer than the period for which data exists.  The start_date reflects the requested date, or the earliest date for which data is available. |  |
| **end_date** | **Date** | End date of the cumulative performance period.  This may differ from the requested end date if the requested period is longer than the period for which data exists.  The end_date reflects the requested date, or the most recent date for which data is available. |  |
| **cumulative_dates** | **Integer** | A count of the data points (days) which fall within the cumulative period requested. |  |
| **performance_dates** | **Integer** | A count of the data points (days) for which there was growth / performance recorded.  Not all fund options are active on all days (ie: stock market closures, weekends, etc). |  |
| **non_performance_dates** | **Integer** | A count of the data points (days) for which there was no growth / performance recorded.  Not all fund options are active on all days (ie: stock market closures, weekends, etc). |  |

## Example

```ruby
require 'super-api'

instance = SuperAPI::APIEntitiesCumulativePerformance.new(
  report: daily,
  growth_rate: 0.3241,
  growth_rate_type: percentage,
  start_date: Sat Jun 12 00:00:00 GMT 34,
  end_date: Sat Jun 12 00:00:00 GMT 34,
  cumulative_dates: 324,
  performance_dates: 342,
  non_performance_dates: 342
)
```

