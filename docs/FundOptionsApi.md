# SuperAPI::FundOptionsApi

All URIs are relative to *https://api.superapi.com.au/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_v1_fund_options**](FundOptionsApi.md#get_v1_fund_options) | **GET** /v1/fund_options | List of FundOptions for AustralianSuper |
| [**get_v1_fund_options_name**](FundOptionsApi.md#get_v1_fund_options_name) | **GET** /v1/fund_options/{name} | Details of a FundOption |


## get_v1_fund_options

> <Array<APIEntitiesFundOption>> get_v1_fund_options

List of FundOptions for AustralianSuper

This endpoint enables developers to retrieve a list of the FundOptions available from AustralianSuper.  FundOptions enable an AustralianSuper member to determine (at a high level) the makeup of their superannuation portfolio.  The FundOptions can be utilised with other endpoints to retrieve additional details related to the FundOption, such as the performance of the portfolio over time.

### Examples

```ruby
require 'time'
require 'super-api'

api_instance = SuperAPI::FundOptionsApi.new

begin
  # List of FundOptions for AustralianSuper
  result = api_instance.get_v1_fund_options
  p result
rescue SuperAPI::ApiError => e
  puts "Error when calling FundOptionsApi->get_v1_fund_options: #{e}"
end
```

#### Using the get_v1_fund_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<APIEntitiesFundOption>>, Integer, Hash)> get_v1_fund_options_with_http_info

```ruby
begin
  # List of FundOptions for AustralianSuper
  data, status_code, headers = api_instance.get_v1_fund_options_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<APIEntitiesFundOption>>
rescue SuperAPI::ApiError => e
  puts "Error when calling FundOptionsApi->get_v1_fund_options_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;APIEntitiesFundOption&gt;**](APIEntitiesFundOption.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_v1_fund_options_name

> <APIEntitiesFundOption> get_v1_fund_options_name(name)

Details of a FundOption

This endpoint enables developers to retrieve the details of a FundOption.

### Examples

```ruby
require 'time'
require 'super-api'

api_instance = SuperAPI::FundOptionsApi.new
name = 'name_example' # String | Name of the FundOption requested

begin
  # Details of a FundOption
  result = api_instance.get_v1_fund_options_name(name)
  p result
rescue SuperAPI::ApiError => e
  puts "Error when calling FundOptionsApi->get_v1_fund_options_name: #{e}"
end
```

#### Using the get_v1_fund_options_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIEntitiesFundOption>, Integer, Hash)> get_v1_fund_options_name_with_http_info(name)

```ruby
begin
  # Details of a FundOption
  data, status_code, headers = api_instance.get_v1_fund_options_name_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIEntitiesFundOption>
rescue SuperAPI::ApiError => e
  puts "Error when calling FundOptionsApi->get_v1_fund_options_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the FundOption requested |  |

### Return type

[**APIEntitiesFundOption**](APIEntitiesFundOption.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

