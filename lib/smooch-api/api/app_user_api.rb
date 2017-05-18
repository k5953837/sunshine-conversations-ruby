=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 1.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class AppUserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Update specified device information.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param device_id Identifies the device.
    # @param app_user_device_update_body Body for an updateAppUserDevice request.
    # @param [Hash] opts the optional parameters
    # @return [DeviceResponse]
    def app_user_device_update(user_id, device_id, app_user_device_update_body, opts = {})
      data, _status_code, _headers = app_user_device_update_with_http_info(user_id, device_id, app_user_device_update_body, opts)
      return data
    end

    # 
    # Update specified device information.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param device_id Identifies the device.
    # @param app_user_device_update_body Body for an updateAppUserDevice request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeviceResponse, Fixnum, Hash)>] DeviceResponse data, response status code and response headers
    def app_user_device_update_with_http_info(user_id, device_id, app_user_device_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.app_user_device_update ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.app_user_device_update"
      end
      # verify the required parameter 'device_id' is set
      if @api_client.config.client_side_validation && device_id.nil?
        fail ArgumentError, "Missing the required parameter 'device_id' when calling AppUserApi.app_user_device_update"
      end
      # verify the required parameter 'app_user_device_update_body' is set
      if @api_client.config.client_side_validation && app_user_device_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'app_user_device_update_body' when calling AppUserApi.app_user_device_update"
      end
      # resource path
      local_var_path = "/appusers/{userId}/devices/{deviceId}".sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'deviceId' + '}', device_id.to_s)

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
      post_body = @api_client.object_to_http_body(app_user_device_update_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeviceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#app_user_device_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete specified app user's profile.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def delete_app_user_profile(user_id, opts = {})
      data, _status_code, _headers = delete_app_user_profile_with_http_info(user_id, opts)
      return data
    end

    # 
    # Delete specified app user&#39;s profile.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def delete_app_user_profile_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.delete_app_user_profile ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.delete_app_user_profile"
      end
      # resource path
      local_var_path = "/appusers/{userId}/profile".sub('{' + 'userId' + '}', user_id.to_s)

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
        :auth_names => auth_names,
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#delete_app_user_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified app user.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def get_app_user(user_id, opts = {})
      data, _status_code, _headers = get_app_user_with_http_info(user_id, opts)
      return data
    end

    # 
    # Get the specified app user.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def get_app_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.get_app_user ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.get_app_user"
      end
      # resource path
      local_var_path = "/appusers/{userId}".sub('{' + 'userId' + '}', user_id.to_s)

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
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#get_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get specified app user's channel entity IDs.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def get_app_user_entity_ids(user_id, opts = {})
      data, _status_code, _headers = get_app_user_entity_ids_with_http_info(user_id, opts)
      return data
    end

    # 
    # Get specified app user&#39;s channel entity IDs.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def get_app_user_entity_ids_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.get_app_user_entity_ids ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.get_app_user_entity_ids"
      end
      # resource path
      local_var_path = "/appusers/{userId}/channels".sub('{' + 'userId' + '}', user_id.to_s)

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
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#get_app_user_entity_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Link specified app user to given channel.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param app_user_link_body Body for a linkAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def link_app_user(user_id, app_user_link_body, opts = {})
      data, _status_code, _headers = link_app_user_with_http_info(user_id, app_user_link_body, opts)
      return data
    end

    # 
    # Link specified app user to given channel.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param app_user_link_body Body for a linkAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def link_app_user_with_http_info(user_id, app_user_link_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.link_app_user ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.link_app_user"
      end
      # verify the required parameter 'app_user_link_body' is set
      if @api_client.config.client_side_validation && app_user_link_body.nil?
        fail ArgumentError, "Missing the required parameter 'app_user_link_body' when calling AppUserApi.link_app_user"
      end
      # resource path
      local_var_path = "/appusers/{userId}/channels".sub('{' + 'userId' + '}', user_id.to_s)

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
      post_body = @api_client.object_to_http_body(app_user_link_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#link_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Send an image message to the conversation.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param source Image to be uploaded
    # @param role Role of the sender
    # @param [Hash] opts the optional parameters
    # @return [MessageResponse]
    def post_image_message(user_id, source, role, opts = {})
      data, _status_code, _headers = post_image_message_with_http_info(user_id, source, role, opts)
      return data
    end

    # 
    # Send an image message to the conversation.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param source Image to be uploaded
    # @param role Role of the sender
    # @param [Hash] opts the optional parameters
    # @return [Array<(MessageResponse, Fixnum, Hash)>] MessageResponse data, response status code and response headers
    def post_image_message_with_http_info(user_id, source, role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.post_image_message ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.post_image_message"
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling AppUserApi.post_image_message"
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling AppUserApi.post_image_message"
      end
      # resource path
      local_var_path = "/appusers/{userId}/images".sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["source"] = source
      form_params["role"] = role

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MessageResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#post_image_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Pre-create an app user.
    # @param app_user_pre_create_body Body for a preCreateAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def pre_create_app_user(app_user_pre_create_body, opts = {})
      data, _status_code, _headers = pre_create_app_user_with_http_info(app_user_pre_create_body, opts)
      return data
    end

    # 
    # Pre-create an app user.
    # @param app_user_pre_create_body Body for a preCreateAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def pre_create_app_user_with_http_info(app_user_pre_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.pre_create_app_user ..."
      end
      # verify the required parameter 'app_user_pre_create_body' is set
      if @api_client.config.client_side_validation && app_user_pre_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'app_user_pre_create_body' when calling AppUserApi.pre_create_app_user"
      end
      # resource path
      local_var_path = "/appusers"

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
      post_body = @api_client.object_to_http_body(app_user_pre_create_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#pre_create_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Track an event for the given app user.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param track_event_body Body for a trackEvent request.
    # @param [Hash] opts the optional parameters
    # @return [TrackEventResponse]
    def track_event(user_id, track_event_body, opts = {})
      data, _status_code, _headers = track_event_with_http_info(user_id, track_event_body, opts)
      return data
    end

    # 
    # Track an event for the given app user.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param track_event_body Body for a trackEvent request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TrackEventResponse, Fixnum, Hash)>] TrackEventResponse data, response status code and response headers
    def track_event_with_http_info(user_id, track_event_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.track_event ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.track_event"
      end
      # verify the required parameter 'track_event_body' is set
      if @api_client.config.client_side_validation && track_event_body.nil?
        fail ArgumentError, "Missing the required parameter 'track_event_body' when calling AppUserApi.track_event"
      end
      # resource path
      local_var_path = "/appusers/{userId}/events".sub('{' + 'userId' + '}', user_id.to_s)

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
      post_body = @api_client.object_to_http_body(track_event_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TrackEventResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#track_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Unlink specified app user from given channel.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param channel Name of the channel.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unlink_app_user(user_id, channel, opts = {})
      unlink_app_user_with_http_info(user_id, channel, opts)
      return nil
    end

    # 
    # Unlink specified app user from given channel.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param channel Name of the channel.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def unlink_app_user_with_http_info(user_id, channel, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.unlink_app_user ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.unlink_app_user"
      end
      # verify the required parameter 'channel' is set
      if @api_client.config.client_side_validation && channel.nil?
        fail ArgumentError, "Missing the required parameter 'channel' when calling AppUserApi.unlink_app_user"
      end
      # resource path
      local_var_path = "/appusers/{userId}/channels/{channel}".sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'channel' + '}', channel.to_s)

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
        @api_client.config.logger.debug "API called: AppUserApi#unlink_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified app user.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param app_user_update_body Body for an updateAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def update_app_user(user_id, app_user_update_body, opts = {})
      data, _status_code, _headers = update_app_user_with_http_info(user_id, app_user_update_body, opts)
      return data
    end

    # 
    # Update the specified app user.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param app_user_update_body Body for an updateAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def update_app_user_with_http_info(user_id, app_user_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.update_app_user ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.update_app_user"
      end
      # verify the required parameter 'app_user_update_body' is set
      if @api_client.config.client_side_validation && app_user_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'app_user_update_body' when calling AppUserApi.update_app_user"
      end
      # resource path
      local_var_path = "/appusers/{userId}".sub('{' + 'userId' + '}', user_id.to_s)

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
      post_body = @api_client.object_to_http_body(app_user_update_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#update_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
