=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.25

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class NotificationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Post a notification to an externalId.
    # @param appId Identifies the app.
    # @param notificationPostBody Body for a postNotification request. 
    # @param [Hash] opts the optional parameters
    # @return [NotificationResponse]
    def post_notification(appId, notificationPostBody, opts = {})
      data, _status_code, _headers = post_notification_with_http_info(appId, notificationPostBody, opts)
      return data
    end

    # 
    # Post a notification to an externalId.
    # @param appId Identifies the app.
    # @param notificationPostBody Body for a postNotification request. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NotificationResponse, Fixnum, Hash)>] NotificationResponse data, response status code and response headers
    def post_notification_with_http_info(appId, notificationPostBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotificationApi.post_notification ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling NotificationApi.post_notification"
      end
      # verify the required parameter 'notificationPostBody' is set
      if @api_client.config.client_side_validation && notificationPostBody.nil?
        fail ArgumentError, "Missing the required parameter 'notificationPostBody' when calling NotificationApi.post_notification"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/notifications".sub('{' + 'appId' + '}', appId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(notificationPostBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NotificationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationApi#post_notification\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
