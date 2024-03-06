=begin
#Sunshine Conversations API

The version of the OpenAPI document: 12.3.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class ParticipantsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Join Conversation
    # Adds a user to a conversation using either their userId or userExternalId. The endpoint only supports adding a participant to a sdkGroup conversation. 
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param participant_join_body [ParticipantJoinBody] 
    # @param [Hash] opts the optional parameters
    # @return [ParticipantResponse]
    def join_conversation(app_id, conversation_id, participant_join_body, opts = {})
      data, _status_code, _headers = join_conversation_with_http_info(app_id, conversation_id, participant_join_body, opts)
      data
    end

    # Join Conversation
    # Adds a user to a conversation using either their userId or userExternalId. The endpoint only supports adding a participant to a sdkGroup conversation. 
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param participant_join_body [ParticipantJoinBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ParticipantResponse, Integer, Hash)>] ParticipantResponse data, response status code and response headers
    def join_conversation_with_http_info(app_id, conversation_id, participant_join_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ParticipantsApi.join_conversation ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ParticipantsApi.join_conversation"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling ParticipantsApi.join_conversation"
      end
      # verify the required parameter 'participant_join_body' is set
      if @api_client.config.client_side_validation && participant_join_body.nil?
        fail ArgumentError, "Missing the required parameter 'participant_join_body' when calling ParticipantsApi.join_conversation"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}/join'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(participant_join_body) 

      # return_type
      return_type = opts[:return_type] || 'ParticipantResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ParticipantsApi#join_conversation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Leave Conversation
    # Removes a user from a conversation using either their userId, userExternalId, or participantId. 
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param participant_leave_body [ParticipantLeaveBody] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def leave_conversation(app_id, conversation_id, participant_leave_body, opts = {})
      data, _status_code, _headers = leave_conversation_with_http_info(app_id, conversation_id, participant_leave_body, opts)
      data
    end

    # Leave Conversation
    # Removes a user from a conversation using either their userId, userExternalId, or participantId. 
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param participant_leave_body [ParticipantLeaveBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def leave_conversation_with_http_info(app_id, conversation_id, participant_leave_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ParticipantsApi.leave_conversation ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ParticipantsApi.leave_conversation"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling ParticipantsApi.leave_conversation"
      end
      # verify the required parameter 'participant_leave_body' is set
      if @api_client.config.client_side_validation && participant_leave_body.nil?
        fail ArgumentError, "Missing the required parameter 'participant_leave_body' when calling ParticipantsApi.leave_conversation"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}/leave'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(participant_leave_body) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ParticipantsApi#leave_conversation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Participants
    # Lists all the participants of a particular conversation. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits).  ```shell /v2/apps/:appId/conversations/:conversationId/participants?page[before]=26508c10541a4b0ff472e5e2 ``` 
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param [Hash] opts the optional parameters
    # @option opts [Page] :page Contains parameters for applying cursor pagination.
    # @return [ParticipantListResponse]
    def list_participants(app_id, conversation_id, opts = {})
      data, _status_code, _headers = list_participants_with_http_info(app_id, conversation_id, opts)
      data
    end

    # List Participants
    # Lists all the participants of a particular conversation. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits).  &#x60;&#x60;&#x60;shell /v2/apps/:appId/conversations/:conversationId/participants?page[before]&#x3D;26508c10541a4b0ff472e5e2 &#x60;&#x60;&#x60; 
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param [Hash] opts the optional parameters
    # @option opts [Page] :page Contains parameters for applying cursor pagination.
    # @return [Array<(ParticipantListResponse, Integer, Hash)>] ParticipantListResponse data, response status code and response headers
    def list_participants_with_http_info(app_id, conversation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ParticipantsApi.list_participants ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ParticipantsApi.list_participants"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling ParticipantsApi.list_participants"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}/participants'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ParticipantListResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ParticipantsApi#list_participants\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
