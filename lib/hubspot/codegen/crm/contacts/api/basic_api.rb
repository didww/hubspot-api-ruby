=begin
#Contacts

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Contacts
      class BasicApi
        include Hubspot::Helpers::GetAllHelper

        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Archive
        # Move an Object identified by `{contactId}` to the recycling bin.
        # @param contact_id [String] 
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(contact_id, opts = {})
          archive_with_http_info(contact_id, opts)
          nil
        end

        # Archive
        # Move an Object identified by &#x60;{contactId}&#x60; to the recycling bin.
        # @param contact_id [String] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(contact_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.archive ...'
          end
          # verify the required parameter 'contact_id' is set
          if @api_client.config.client_side_validation && contact_id.nil?
            fail ArgumentError, "Missing the required parameter 'contact_id' when calling BasicApi.archive"
          end
          # resource path
          local_var_path = '/crm/v3/objects/contacts/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

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

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create
        # Create a contact with the given properties and return a copy of the object, including the ID. Documentation and examples for creating standard contacts is provided.
        # @param simple_public_object_input [SimplePublicObjectInput] 
        # @param [Hash] opts the optional parameters
        # @return [SimplePublicObject]
        def create(simple_public_object_input, opts = {})
          data, _status_code, _headers = create_with_http_info(simple_public_object_input, opts)
          data
        end

        # Create
        # Create a contact with the given properties and return a copy of the object, including the ID. Documentation and examples for creating standard contacts is provided.
        # @param simple_public_object_input [SimplePublicObjectInput] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(SimplePublicObject, Integer, Hash)>] SimplePublicObject data, response status code and response headers
        def create_with_http_info(simple_public_object_input, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.create ...'
          end
          # verify the required parameter 'simple_public_object_input' is set
          if @api_client.config.client_side_validation && simple_public_object_input.nil?
            fail ArgumentError, "Missing the required parameter 'simple_public_object_input' when calling BasicApi.create"
          end
          # resource path
          local_var_path = '/crm/v3/objects/contacts'

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
          post_body = opts[:body] || @api_client.object_to_http_body(simple_public_object_input) 

          # return_type
          return_type = opts[:return_type] || 'SimplePublicObject' 

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
            @api_client.config.logger.debug "API called: BasicApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Read
        # Read an Object identified by `{contactId}`. `{contactId}` refers to the internal object ID.  Control what is returned via the `properties` query param.
        # @param contact_id [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :properties_with_history A comma separated list of the properties to be returned along with their history of previous values. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @return [SimplePublicObjectWithAssociations]
        def get_by_id(contact_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(contact_id, opts)
          data
        end

        # Read
        # Read an Object identified by &#x60;{contactId}&#x60;. &#x60;{contactId}&#x60; refers to the internal object ID.  Control what is returned via the &#x60;properties&#x60; query param.
        # @param contact_id [String] 
        # @param [Hash] opts the optional parameters
        # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :properties_with_history A comma separated list of the properties to be returned along with their history of previous values. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @return [Array<(SimplePublicObjectWithAssociations, Integer, Hash)>] SimplePublicObjectWithAssociations data, response status code and response headers
        def get_by_id_with_http_info(contact_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.get_by_id ...'
          end
          # verify the required parameter 'contact_id' is set
          if @api_client.config.client_side_validation && contact_id.nil?
            fail ArgumentError, "Missing the required parameter 'contact_id' when calling BasicApi.get_by_id"
          end
          # resource path
          local_var_path = '/crm/v3/objects/contacts/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :multi) if !opts[:'properties'].nil?
          query_params[:'propertiesWithHistory'] = @api_client.build_collection_param(opts[:'properties_with_history'], :multi) if !opts[:'properties_with_history'].nil?
          query_params[:'associations'] = @api_client.build_collection_param(opts[:'associations'], :multi) if !opts[:'associations'].nil?
          query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'SimplePublicObjectWithAssociations' 

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

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # List
        # Read a page of contacts. Control what is returned via the `properties` query param.
        # @param [Hash] opts the optional parameters
        # @option opts [Integer] :limit The maximum number of results to display per page. (default to 10)
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :properties_with_history A comma separated list of the properties to be returned along with their history of previous values. If any of the specified properties are not present on the requested object(s), they will be ignored. Usage of this parameter will reduce the maximum number of objects that can be read by a single request.
        # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
        # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
        # @return [CollectionResponseSimplePublicObjectWithAssociationsForwardPaging]
        def get_page(opts = {})
          data, _status_code, _headers = get_page_with_http_info(opts)
          data
        end

        # List
        # Read a page of contacts. Control what is returned via the &#x60;properties&#x60; query param.
        # @param [Hash] opts the optional parameters
        # @option opts [Integer] :limit The maximum number of results to display per page.
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
        # @option opts [Array<String>] :properties_with_history A comma separated list of the properties to be returned along with their history of previous values. If any of the specified properties are not present on the requested object(s), they will be ignored. Usage of this parameter will reduce the maximum number of objects that can be read by a single request.
        # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @return [Array<(CollectionResponseSimplePublicObjectWithAssociationsForwardPaging, Integer, Hash)>] CollectionResponseSimplePublicObjectWithAssociationsForwardPaging data, response status code and response headers
        def get_page_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.get_page ...'
          end
          # resource path
          local_var_path = '/crm/v3/objects/contacts'

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
          query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
          query_params[:'properties'] = @api_client.build_collection_param(opts[:'properties'], :multi) if !opts[:'properties'].nil?
          query_params[:'propertiesWithHistory'] = @api_client.build_collection_param(opts[:'properties_with_history'], :multi) if !opts[:'properties_with_history'].nil?
          query_params[:'associations'] = @api_client.build_collection_param(opts[:'associations'], :multi) if !opts[:'associations'].nil?
          query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'CollectionResponseSimplePublicObjectWithAssociationsForwardPaging' 

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

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update
        # Perform a partial update of an Object identified by `{contactId}`. `{contactId}` refers to the internal object ID. Provided property values will be overwritten. Read-only and non-existent properties will be ignored. Properties values can be cleared by passing an empty string.
        # @param contact_id [String] 
        # @param simple_public_object_input [SimplePublicObjectInput] 
        # @param [Hash] opts the optional parameters
        # @return [SimplePublicObject]
        def update(contact_id, simple_public_object_input, opts = {})
          data, _status_code, _headers = update_with_http_info(contact_id, simple_public_object_input, opts)
          data
        end

        # Update
        # Perform a partial update of an Object identified by &#x60;{contactId}&#x60;. &#x60;{contactId}&#x60; refers to the internal object ID. Provided property values will be overwritten. Read-only and non-existent properties will be ignored. Properties values can be cleared by passing an empty string.
        # @param contact_id [String] 
        # @param simple_public_object_input [SimplePublicObjectInput] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(SimplePublicObject, Integer, Hash)>] SimplePublicObject data, response status code and response headers
        def update_with_http_info(contact_id, simple_public_object_input, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.update ...'
          end
          # verify the required parameter 'contact_id' is set
          if @api_client.config.client_side_validation && contact_id.nil?
            fail ArgumentError, "Missing the required parameter 'contact_id' when calling BasicApi.update"
          end
          # verify the required parameter 'simple_public_object_input' is set
          if @api_client.config.client_side_validation && simple_public_object_input.nil?
            fail ArgumentError, "Missing the required parameter 'simple_public_object_input' when calling BasicApi.update"
          end
          # resource path
          local_var_path = '/crm/v3/objects/contacts/{contactId}'.sub('{' + 'contactId' + '}', CGI.escape(contact_id.to_s))

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
          post_body = opts[:body] || @api_client.object_to_http_body(simple_public_object_input) 

          # return_type
          return_type = opts[:return_type] || 'SimplePublicObject' 

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

          data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
