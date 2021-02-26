# SuperAPI::PerformanceApi

All URIs are relative to *https://api.superapi.com.au/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_v1_name_annual**](PerformanceApi.md#get_v1_name_annual) | **GET** /v1/{name}/annual | Annual Performance |
| [**get_v1_name_cumulative**](PerformanceApi.md#get_v1_name_cumulative) | **GET** /v1/{name}/cumulative | Cumulative Performance |
| [**get_v1_name_daily**](PerformanceApi.md#get_v1_name_daily) | **GET** /v1/{name}/daily | Daily Performance |
| [**get_v1_name_daily_latest**](PerformanceApi.md#get_v1_name_daily_latest) | **GET** /v1/{name}/daily/latest | Latest Performance |
| [**get_v1_name_daily_today**](PerformanceApi.md#get_v1_name_daily_today) | **GET** /v1/{name}/daily/today | Today&#39;s Performance |
| [**get_v1_name_daily_yesterday**](PerformanceApi.md#get_v1_name_daily_yesterday) | **GET** /v1/{name}/daily/yesterday | Yesterday&#39;s Performance |


## get_v1_name_annual

> <APIEntitiesAnnualPerformance> get_v1_name_annual(name, year)

Annual Performance

The annual performance for a FundOption for a given year.

### Examples

```ruby
require 'time'
require 'super-api'

api_instance = SuperAPI::PerformanceApi.new
name = 'name_example' # String | 
year = 56 # Integer | Year of the performance data

begin
  # Annual Performance
  result = api_instance.get_v1_name_annual(name, year)
  p result
rescue SuperAPI::ApiError => e
  puts "Error when calling PerformanceApi->get_v1_name_annual: #{e}"
end
```

#### Using the get_v1_name_annual_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIEntitiesAnnualPerformance>, Integer, Hash)> get_v1_name_annual_with_http_info(name, year)

```ruby
begin
  # Annual Performance
  data, status_code, headers = api_instance.get_v1_name_annual_with_http_info(name, year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIEntitiesAnnualPerformance>
rescue SuperAPI::ApiError => e
  puts "Error when calling PerformanceApi->get_v1_name_annual_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **year** | **Integer** | Year of the performance data |  |

### Return type

[**APIEntitiesAnnualPerformance**](APIEntitiesAnnualPerformance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_v1_name_cumulative

> <APIEntitiesCumulativePerformance> get_v1_name_cumulative(name, start_date, end_date)

Cumulative Performance

The cumulative performance from the inception of the FundOption.  This represents the growth over time from the inception date of the FundOption to the requested date.

### Examples

```ruby
require 'time'
require 'super-api'

api_instance = SuperAPI::PerformanceApi.new
name = 'name_example' # String | 
start_date = Date.parse('2013-10-20') # Date | Start date of the desired cumulative period
end_date = Date.parse('2013-10-20') # Date | End date of the desired cumulative period

begin
  # Cumulative Performance
  result = api_instance.get_v1_name_cumulative(name, start_date, end_date)
  p result
rescue SuperAPI::ApiError => e
  puts "Error when calling PerformanceApi->get_v1_name_cumulative: #{e}"
end
```

#### Using the get_v1_name_cumulative_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIEntitiesCumulativePerformance>, Integer, Hash)> get_v1_name_cumulative_with_http_info(name, start_date, end_date)

```ruby
begin
  # Cumulative Performance
  data, status_code, headers = api_instance.get_v1_name_cumulative_with_http_info(name, start_date, end_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIEntitiesCumulativePerformance>
rescue SuperAPI::ApiError => e
  puts "Error when calling PerformanceApi->get_v1_name_cumulative_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **start_date** | **Date** | Start date of the desired cumulative period |  |
| **end_date** | **Date** | End date of the desired cumulative period |  |

### Return type

[**APIEntitiesCumulativePerformance**](APIEntitiesCumulativePerformance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_v1_name_daily

> <APIEntitiesPerformance> get_v1_name_daily(name, date)

Daily Performance

The performance for a superannuation FundOption on a specific day.  Not all FundOptions will have a performance on every day, as some FundOptions are not relevant on every day (ie: public holidays, weekends, market closures, etc).  A result of 0 represents no performance.

### Examples

```ruby
require 'time'
require 'super-api'

api_instance = SuperAPI::PerformanceApi.new
name = 'name_example' # String | 
date = Date.parse('2013-10-20') # Date | Date of the performance data

begin
  # Daily Performance
  result = api_instance.get_v1_name_daily(name, date)
  p result
rescue SuperAPI::ApiError => e
  puts "Error when calling PerformanceApi->get_v1_name_daily: #{e}"
end
```

#### Using the get_v1_name_daily_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIEntitiesPerformance>, Integer, Hash)> get_v1_name_daily_with_http_info(name, date)

```ruby
begin
  # Daily Performance
  data, status_code, headers = api_instance.get_v1_name_daily_with_http_info(name, date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIEntitiesPerformance>
rescue SuperAPI::ApiError => e
  puts "Error when calling PerformanceApi->get_v1_name_daily_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **date** | **Date** | Date of the performance data |  |

### Return type

[**APIEntitiesPerformance**](APIEntitiesPerformance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_v1_name_daily_latest

> <APIEntitiesPerformance> get_v1_name_daily_latest(name)

Latest Performance

Retrieves the performance for the most recent date, for which performance data exists.

### Examples

```ruby
require 'time'
require 'super-api'

api_instance = SuperAPI::PerformanceApi.new
name = 'name_example' # String | 

begin
  # Latest Performance
  result = api_instance.get_v1_name_daily_latest(name)
  p result
rescue SuperAPI::ApiError => e
  puts "Error when calling PerformanceApi->get_v1_name_daily_latest: #{e}"
end
```

#### Using the get_v1_name_daily_latest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIEntitiesPerformance>, Integer, Hash)> get_v1_name_daily_latest_with_http_info(name)

```ruby
begin
  # Latest Performance
  data, status_code, headers = api_instance.get_v1_name_daily_latest_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIEntitiesPerformance>
rescue SuperAPI::ApiError => e
  puts "Error when calling PerformanceApi->get_v1_name_daily_latest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |

### Return type

[**APIEntitiesPerformance**](APIEntitiesPerformance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_v1_name_daily_today

> <APIEntitiesPerformance> get_v1_name_daily_today(name)

Today's Performance

Retrieves the performance for today.  This retrieves the same results as the Daily endpoint, but provides a shortcut to retrieve todays performance for a given FundOption.

### Examples

```ruby
require 'time'
require 'super-api'

api_instance = SuperAPI::PerformanceApi.new
name = 'name_example' # String | 

begin
  # Today's Performance
  result = api_instance.get_v1_name_daily_today(name)
  p result
rescue SuperAPI::ApiError => e
  puts "Error when calling PerformanceApi->get_v1_name_daily_today: #{e}"
end
```

#### Using the get_v1_name_daily_today_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIEntitiesPerformance>, Integer, Hash)> get_v1_name_daily_today_with_http_info(name)

```ruby
begin
  # Today's Performance
  data, status_code, headers = api_instance.get_v1_name_daily_today_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIEntitiesPerformance>
rescue SuperAPI::ApiError => e
  puts "Error when calling PerformanceApi->get_v1_name_daily_today_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |

### Return type

[**APIEntitiesPerformance**](APIEntitiesPerformance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_v1_name_daily_yesterday

> <APIEntitiesPerformance> get_v1_name_daily_yesterday(name)

Yesterday's Performance

Retrieves the performance for yesterday.  This retrieves the same results as the Daily endpoint, but provides a shortcut to retrieve yesterday performance for a given FundOption.

### Examples

```ruby
require 'time'
require 'super-api'

api_instance = SuperAPI::PerformanceApi.new
name = 'name_example' # String | 

begin
  # Yesterday's Performance
  result = api_instance.get_v1_name_daily_yesterday(name)
  p result
rescue SuperAPI::ApiError => e
  puts "Error when calling PerformanceApi->get_v1_name_daily_yesterday: #{e}"
end
```

#### Using the get_v1_name_daily_yesterday_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIEntitiesPerformance>, Integer, Hash)> get_v1_name_daily_yesterday_with_http_info(name)

```ruby
begin
  # Yesterday's Performance
  data, status_code, headers = api_instance.get_v1_name_daily_yesterday_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIEntitiesPerformance>
rescue SuperAPI::ApiError => e
  puts "Error when calling PerformanceApi->get_v1_name_daily_yesterday_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |

### Return type

[**APIEntitiesPerformance**](APIEntitiesPerformance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

