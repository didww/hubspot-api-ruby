=begin
#Deals

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Client
    module Crm
      module Deals
        module Api
          class BatchApi
            attr_accessor :api_client

            def initialize(api_client = ApiClient.default)
              @api_client = api_client
            end
            # Archive a batch of deals by ID
            # Archive a list of deals given a collection of IDs. This method will return a `204 No Content` response on success regardless of the initial state of the object (e.g. active, already archived, non-existent).
            # @param [Hash] opts the optional parameters
            # @option opts [BatchInputSimplePublicObjectId] :batch_input_simple_public_object_id 
            # @return [nil]
            def archive_batch(opts = {})
              archive_batch_with_http_info(opts)
              nil
            end

            # Archive a batch of deals by ID
            # Archive a list of deals given a collection of IDs. This method will return a &#x60;204 No Content&#x60; response on success regardless of the initial state of the object (e.g. active, already archived, non-existent).
            # @param [Hash] opts the optional parameters
            # @option opts [BatchInputSimplePublicObjectId] :batch_input_simple_public_object_id 
            # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
            def archive_batch_with_http_info(opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: BatchApi.archive_batch ...'
              end
              # resource path
              local_var_path = '/deals/batch/archive'

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['*/*'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'batch_input_simple_public_object_id']) 

              # return_type
              return_type = opts[:return_type] 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

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
                @api_client.config.logger.debug "API called: BatchApi#archive_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Create a batch of deals
            # Create a batch of deals. This follows the same rules as creating an individual object.
            # @param [Hash] opts the optional parameters
            # @option opts [BatchInputSimplePublicObjectInput] :batch_input_simple_public_object_input 
            # @return [BatchResponseSimplePublicObject]
            def create_batch(opts = {})
              data, _status_code, _headers = create_batch_with_http_info(opts)
              data
            end

            # Create a batch of deals
            # Create a batch of deals. This follows the same rules as creating an individual object.
            # @param [Hash] opts the optional parameters
            # @option opts [BatchInputSimplePublicObjectInput] :batch_input_simple_public_object_input 
            # @return [Array<(BatchResponseSimplePublicObject, Integer, Hash)>] BatchResponseSimplePublicObject data, response status code and response headers
            def create_batch_with_http_info(opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: BatchApi.create_batch ...'
              end
              # resource path
              local_var_path = '/deals/batch/create'

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'batch_input_simple_public_object_input']) 

              # return_type
              return_type = opts[:return_type] || 'BatchResponseSimplePublicObject' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

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
                @api_client.config.logger.debug "API called: BatchApi#create_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Read a batch of deals by ID
            # Read a list of deals given a collection of IDs. Use the `properties` request body property to control which properties are returned.
            # @param [Hash] opts the optional parameters
            # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
            # @option opts [BatchReadInputSimplePublicObjectId] :batch_read_input_simple_public_object_id 
            # @return [BatchResponseSimplePublicObject]
            def read_batch(opts = {})
              data, _status_code, _headers = read_batch_with_http_info(opts)
              data
            end

            # Read a batch of deals by ID
            # Read a list of deals given a collection of IDs. Use the &#x60;properties&#x60; request body property to control which properties are returned.
            # @param [Hash] opts the optional parameters
            # @option opts [Boolean] :archived Whether to return only results that have been archived.
            # @option opts [BatchReadInputSimplePublicObjectId] :batch_read_input_simple_public_object_id 
            # @return [Array<(BatchResponseSimplePublicObject, Integer, Hash)>] BatchResponseSimplePublicObject data, response status code and response headers
            def read_batch_with_http_info(opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: BatchApi.read_batch ...'
              end
              # resource path
              local_var_path = '/deals/batch/read'

              # query parameters
              query_params = opts[:query_params] || {}
              query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'batch_read_input_simple_public_object_id']) 

              # return_type
              return_type = opts[:return_type] || 'BatchResponseSimplePublicObject' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

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
                @api_client.config.logger.debug "API called: BatchApi#read_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Update a batch of deals
            # Perform a partial upate on a batch of deals. This follows the same rules as performing partial updates on an individual object.
            # @param [Hash] opts the optional parameters
            # @option opts [BatchInputSimplePublicObjectBatchInput] :batch_input_simple_public_object_batch_input 
            # @return [BatchResponseSimplePublicObject]
            def update_batch(opts = {})
              data, _status_code, _headers = update_batch_with_http_info(opts)
              data
            end

            # Update a batch of deals
            # Perform a partial upate on a batch of deals. This follows the same rules as performing partial updates on an individual object.
            # @param [Hash] opts the optional parameters
            # @option opts [BatchInputSimplePublicObjectBatchInput] :batch_input_simple_public_object_batch_input 
            # @return [Array<(BatchResponseSimplePublicObject, Integer, Hash)>] BatchResponseSimplePublicObject data, response status code and response headers
            def update_batch_with_http_info(opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: BatchApi.update_batch ...'
              end
              # resource path
              local_var_path = '/deals/batch/update'

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'batch_input_simple_public_object_batch_input']) 

              # return_type
              return_type = opts[:return_type] || 'BatchResponseSimplePublicObject' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

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
                @api_client.config.logger.debug "API called: BatchApi#update_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
          end
        end
      end
    end
  end
end