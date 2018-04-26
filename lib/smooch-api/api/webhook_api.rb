=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 3.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class WebhookApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Create a webhook for the specified app.
    # @param app_id Identifies the app.
    # @param webhook_create_body Body for a createWebhook request. 
    # @param [Hash] opts the optional parameters
    # @return [WebhookResponse]
    def create_webhook(app_id, webhook_create_body, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(app_id, webhook_create_body, opts)
      return data
    end

    # 
    # Create a webhook for the specified app.
    # @param app_id Identifies the app.
    # @param webhook_create_body Body for a createWebhook request. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookResponse, Fixnum, Hash)>] WebhookResponse data, response status code and response headers
    def create_webhook_with_http_info(app_id, webhook_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhookApi.create_webhook ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling WebhookApi.create_webhook"
      end
      # verify the required parameter 'webhook_create_body' is set
      if @api_client.config.client_side_validation && webhook_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_create_body' when calling WebhookApi.create_webhook"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/webhooks".sub('{' + 'appId' + '}', app_id.to_s)

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
      post_body = @api_client.object_to_http_body(webhook_create_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified webhook.
    # @param app_id Identifies the app.
    # @param webhook_id Identifies the webhook.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhook(app_id, webhook_id, opts = {})
      delete_webhook_with_http_info(app_id, webhook_id, opts)
      return nil
    end

    # 
    # Delete the specified webhook.
    # @param app_id Identifies the app.
    # @param webhook_id Identifies the webhook.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_webhook_with_http_info(app_id, webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhookApi.delete_webhook ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling WebhookApi.delete_webhook"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookApi.delete_webhook"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/webhooks/{webhookId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'webhookId' + '}', webhook_id.to_s)

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
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified webhook.
    # @param app_id Identifies the app.
    # @param webhook_id Identifies the webhook.
    # @param [Hash] opts the optional parameters
    # @return [WebhookResponse]
    def get_webhook(app_id, webhook_id, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(app_id, webhook_id, opts)
      return data
    end

    # 
    # Get the specified webhook.
    # @param app_id Identifies the app.
    # @param webhook_id Identifies the webhook.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookResponse, Fixnum, Hash)>] WebhookResponse data, response status code and response headers
    def get_webhook_with_http_info(app_id, webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhookApi.get_webhook ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling WebhookApi.get_webhook"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookApi.get_webhook"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/webhooks/{webhookId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'webhookId' + '}', webhook_id.to_s)

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
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # List webhooks for the specified app.
    # @param app_id Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [ListWebhooksResponse]
    def list_webhooks(app_id, opts = {})
      data, _status_code, _headers = list_webhooks_with_http_info(app_id, opts)
      return data
    end

    # 
    # List webhooks for the specified app.
    # @param app_id Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListWebhooksResponse, Fixnum, Hash)>] ListWebhooksResponse data, response status code and response headers
    def list_webhooks_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhookApi.list_webhooks ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling WebhookApi.list_webhooks"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/webhooks".sub('{' + 'appId' + '}', app_id.to_s)

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
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListWebhooksResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#list_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified webhook.
    # @param app_id Identifies the app.
    # @param webhook_id Identifies the webhook.
    # @param webhook_update_body Body for an updateWebhook request. 
    # @param [Hash] opts the optional parameters
    # @return [WebhookResponse]
    def update_webhook(app_id, webhook_id, webhook_update_body, opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(app_id, webhook_id, webhook_update_body, opts)
      return data
    end

    # 
    # Update the specified webhook.
    # @param app_id Identifies the app.
    # @param webhook_id Identifies the webhook.
    # @param webhook_update_body Body for an updateWebhook request. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookResponse, Fixnum, Hash)>] WebhookResponse data, response status code and response headers
    def update_webhook_with_http_info(app_id, webhook_id, webhook_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhookApi.update_webhook ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling WebhookApi.update_webhook"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookApi.update_webhook"
      end
      # verify the required parameter 'webhook_update_body' is set
      if @api_client.config.client_side_validation && webhook_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_update_body' when calling WebhookApi.update_webhook"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/webhooks/{webhookId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'webhookId' + '}', webhook_id.to_s)

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
      post_body = @api_client.object_to_http_body(webhook_update_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
