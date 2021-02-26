# SuperAPI::APIEntitiesFundOption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the FundOption, utilised as an ID in api routes |  |
| **display_name** | **String** | Display friendly name of the FundOption |  |

## Example

```ruby
require 'super-api'

instance = SuperAPI::APIEntitiesFundOption.new(
  name: growth,
  display_name: High Growth
)
```

