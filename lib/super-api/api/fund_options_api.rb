=begin
#Super API Documentation

#The Super API makes superannuation fund data easily accessible for developers.  Build the future.

The version of the OpenAPI document: 1.0.0
Contact: support@superapi.com.au
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0-SNAPSHOT

=end

require 'cgi'

module SuperAPI
  class FundOptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List of FundOptions for AustralianSuper
    # This endpoint enables developers to retrieve a list of the FundOptions available from AustralianSuper.  FundOptions enable an AustralianSuper member to determine (at a high level) the makeup of their superannuation portfolio.  The FundOptions can be utilised with other endpoints to retrieve additional details related to the FundOption, such as the performance of the portfolio over time.
    # @param [Hash] opts the optional parameters
    # @return [Array<APIEntitiesFundOption>]
    def get_v1_fund_options(opts = {})
      data, _status_code, _headers = get_v1_fund_options_with_http_info(opts)
      data
    end

    # List of FundOptions for AustralianSuper
    # This endpoint enables developers to retrieve a list of the FundOptions available from AustralianSuper.  FundOptions enable an AustralianSuper member to determine (at a high level) the makeup of their superannuation portfolio.  The FundOptions can be utilised with other endpoints to retrieve additional details related to the FundOption, such as the performance of the portfolio over time.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<APIEntitiesFundOption>, Integer, Hash)>] Array<APIEntitiesFundOption> data, response status code and response headers
    def get_v1_fund_options_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundOptionsApi.get_v1_fund_options ...'
      end
      # resource path
      local_var_path = '/v1/fund_options'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<APIEntitiesFundOption>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"FundOptionsApi.get_v1_fund_options",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundOptionsApi#get_v1_fund_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Details of a FundOption
    # This endpoint enables developers to retrieve the details of a FundOption.
    # @param name [String] Name of the FundOption requested
    # @param [Hash] opts the optional parameters
    # @return [APIEntitiesFundOption]
    def get_v1_fund_options_name(name, opts = {})
      data, _status_code, _headers = get_v1_fund_options_name_with_http_info(name, opts)
      data
    end

    # Details of a FundOption
    # This endpoint enables developers to retrieve the details of a FundOption.
    # @param name [String] Name of the FundOption requested
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIEntitiesFundOption, Integer, Hash)>] APIEntitiesFundOption data, response status code and response headers
    def get_v1_fund_options_name_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundOptionsApi.get_v1_fund_options_name ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling FundOptionsApi.get_v1_fund_options_name"
      end
      # resource path
      local_var_path = '/v1/fund_options/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIEntitiesFundOption'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"FundOptionsApi.get_v1_fund_options_name",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundOptionsApi#get_v1_fund_options_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end