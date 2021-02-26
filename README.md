# super-api

SuperAPI - the Ruby gem for the Super API Documentation

The Super API makes superannuation fund data easily accessible for developers.  Build the future.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build super-api.gemspec
```

Then either install the gem locally:

```shell
gem install ./super-api-1.0.0.gem
```

(for development, run `gem install --dev ./super-api-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'super-api', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'super-api', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'super-api'

api_instance = SuperAPI::FundOptionsApi.new

begin
  #List of FundOptions for AustralianSuper
  result = api_instance.get_v1_fund_options
  p result
rescue SuperAPI::ApiError => e
  puts "Exception when calling FundOptionsApi->get_v1_fund_options: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.superapi.com.au/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SuperAPI::FundOptionsApi* | [**get_v1_fund_options**](docs/FundOptionsApi.md#get_v1_fund_options) | **GET** /v1/fund_options | List of FundOptions for AustralianSuper
*SuperAPI::FundOptionsApi* | [**get_v1_fund_options_name**](docs/FundOptionsApi.md#get_v1_fund_options_name) | **GET** /v1/fund_options/{name} | Details of a FundOption
*SuperAPI::PerformanceApi* | [**get_v1_name_annual**](docs/PerformanceApi.md#get_v1_name_annual) | **GET** /v1/{name}/annual | Annual Performance
*SuperAPI::PerformanceApi* | [**get_v1_name_cumulative**](docs/PerformanceApi.md#get_v1_name_cumulative) | **GET** /v1/{name}/cumulative | Cumulative Performance
*SuperAPI::PerformanceApi* | [**get_v1_name_daily**](docs/PerformanceApi.md#get_v1_name_daily) | **GET** /v1/{name}/daily | Daily Performance
*SuperAPI::PerformanceApi* | [**get_v1_name_daily_latest**](docs/PerformanceApi.md#get_v1_name_daily_latest) | **GET** /v1/{name}/daily/latest | Latest Performance
*SuperAPI::PerformanceApi* | [**get_v1_name_daily_today**](docs/PerformanceApi.md#get_v1_name_daily_today) | **GET** /v1/{name}/daily/today | Today's Performance
*SuperAPI::PerformanceApi* | [**get_v1_name_daily_yesterday**](docs/PerformanceApi.md#get_v1_name_daily_yesterday) | **GET** /v1/{name}/daily/yesterday | Yesterday's Performance


## Documentation for Models

 - [SuperAPI::APIEntitiesAnnualPerformance](docs/APIEntitiesAnnualPerformance.md)
 - [SuperAPI::APIEntitiesCumulativePerformance](docs/APIEntitiesCumulativePerformance.md)
 - [SuperAPI::APIEntitiesFundOption](docs/APIEntitiesFundOption.md)
 - [SuperAPI::APIEntitiesPerformance](docs/APIEntitiesPerformance.md)


## Documentation for Authorization

 All endpoints do not require authorization.
