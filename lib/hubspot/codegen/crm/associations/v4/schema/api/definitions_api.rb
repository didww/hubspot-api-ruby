=begin
#CrmPublicAssociationsServiceV4

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Associations
      module V4
        module Schema
          class DefinitionsApi
            attr_accessor :api_client

            def initialize(api_client = ApiClient.default)
              @api_client = api_client
            end
            # Create
            # Create a user defined association definition
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param public_association_definition_create_request [PublicAssociationDefinitionCreateRequest] 
            # @param [Hash] opts the optional parameters
            # @return [CollectionResponseAssociationSpecWithLabelNoPaging]
            def create(from_object_type, to_object_type, public_association_definition_create_request, opts = {})
              data, _status_code, _headers = create_with_http_info(from_object_type, to_object_type, public_association_definition_create_request, opts)
              data
            end

            # Create
            # Create a user defined association definition
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param public_association_definition_create_request [PublicAssociationDefinitionCreateRequest] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(CollectionResponseAssociationSpecWithLabelNoPaging, Integer, Hash)>] CollectionResponseAssociationSpecWithLabelNoPaging data, response status code and response headers
            def create_with_http_info(from_object_type, to_object_type, public_association_definition_create_request, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: DefinitionsApi.create ...'
              end
              # verify the required parameter 'from_object_type' is set
              if @api_client.config.client_side_validation && from_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'from_object_type' when calling DefinitionsApi.create"
              end
              # verify the required parameter 'to_object_type' is set
              if @api_client.config.client_side_validation && to_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'to_object_type' when calling DefinitionsApi.create"
              end
              # verify the required parameter 'public_association_definition_create_request' is set
              if @api_client.config.client_side_validation && public_association_definition_create_request.nil?
                fail ArgumentError, "Missing the required parameter 'public_association_definition_create_request' when calling DefinitionsApi.create"
              end
              # resource path
              local_var_path = '/crm/v4/associations/{fromObjectType}/{toObjectType}/labels'.sub('{' + 'fromObjectType' + '}', CGI.escape(from_object_type.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
              # HTTP header 'Content-Type'
              content_type = @api_client.select_header_content_type(['application/json'])
              if !content_type.nil?
                  header_params['Content-Type'] = content_type
              end

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:debug_body] || @api_client.object_to_http_body(public_association_definition_create_request)

              # return_type
              return_type = opts[:debug_return_type] || 'CollectionResponseAssociationSpecWithLabelNoPaging'

              # auth_names
              auth_names = opts[:debug_auth_names] || ['oauth2']

              new_options = opts.merge(
                :operation => :"DefinitionsApi.create",
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: DefinitionsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Delete
            # Deletes an association definition
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param association_type_id [Integer] 
            # @param [Hash] opts the optional parameters
            # @return [nil]
            def delete(from_object_type, to_object_type, association_type_id, opts = {})
              delete_with_http_info(from_object_type, to_object_type, association_type_id, opts)
              nil
            end

            # Delete
            # Deletes an association definition
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param association_type_id [Integer] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
            def delete_with_http_info(from_object_type, to_object_type, association_type_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: DefinitionsApi.delete ...'
              end
              # verify the required parameter 'from_object_type' is set
              if @api_client.config.client_side_validation && from_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'from_object_type' when calling DefinitionsApi.delete"
              end
              # verify the required parameter 'to_object_type' is set
              if @api_client.config.client_side_validation && to_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'to_object_type' when calling DefinitionsApi.delete"
              end
              # verify the required parameter 'association_type_id' is set
              if @api_client.config.client_side_validation && association_type_id.nil?
                fail ArgumentError, "Missing the required parameter 'association_type_id' when calling DefinitionsApi.delete"
              end
              # resource path
              local_var_path = '/crm/v4/associations/{fromObjectType}/{toObjectType}/labels/{associationTypeId}'.sub('{' + 'fromObjectType' + '}', CGI.escape(from_object_type.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s)).sub('{' + 'associationTypeId' + '}', CGI.escape(association_type_id.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:debug_body]

              # return_type
              return_type = opts[:debug_return_type]

              # auth_names
              auth_names = opts[:debug_auth_names] || ['oauth2']

              new_options = opts.merge(
                :operation => :"DefinitionsApi.delete",
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: DefinitionsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Read
            # Returns all association types between two object types
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param [Hash] opts the optional parameters
            # @return [CollectionResponseAssociationSpecWithLabelNoPaging]
            def get_all(from_object_type, to_object_type, opts = {})
              data, _status_code, _headers = get_all_with_http_info(from_object_type, to_object_type, opts)
              data
            end

            # Read
            # Returns all association types between two object types
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(CollectionResponseAssociationSpecWithLabelNoPaging, Integer, Hash)>] CollectionResponseAssociationSpecWithLabelNoPaging data, response status code and response headers
            def get_all_with_http_info(from_object_type, to_object_type, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: DefinitionsApi.get_all ...'
              end
              # verify the required parameter 'from_object_type' is set
              if @api_client.config.client_side_validation && from_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'from_object_type' when calling DefinitionsApi.get_all"
              end
              # verify the required parameter 'to_object_type' is set
              if @api_client.config.client_side_validation && to_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'to_object_type' when calling DefinitionsApi.get_all"
              end
              # resource path
              local_var_path = '/crm/v4/associations/{fromObjectType}/{toObjectType}/labels'.sub('{' + 'fromObjectType' + '}', CGI.escape(from_object_type.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:debug_body]

              # return_type
              return_type = opts[:debug_return_type] || 'CollectionResponseAssociationSpecWithLabelNoPaging'

              # auth_names
              auth_names = opts[:debug_auth_names] || ['oauth2']

              new_options = opts.merge(
                :operation => :"DefinitionsApi.get_all",
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: DefinitionsApi#get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Update
            # Update a user defined association definition
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param public_association_definition_update_request [PublicAssociationDefinitionUpdateRequest] 
            # @param [Hash] opts the optional parameters
            # @return [nil]
            def update(from_object_type, to_object_type, public_association_definition_update_request, opts = {})
              update_with_http_info(from_object_type, to_object_type, public_association_definition_update_request, opts)
              nil
            end

            # Update
            # Update a user defined association definition
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param public_association_definition_update_request [PublicAssociationDefinitionUpdateRequest] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
            def update_with_http_info(from_object_type, to_object_type, public_association_definition_update_request, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: DefinitionsApi.update ...'
              end
              # verify the required parameter 'from_object_type' is set
              if @api_client.config.client_side_validation && from_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'from_object_type' when calling DefinitionsApi.update"
              end
              # verify the required parameter 'to_object_type' is set
              if @api_client.config.client_side_validation && to_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'to_object_type' when calling DefinitionsApi.update"
              end
              # verify the required parameter 'public_association_definition_update_request' is set
              if @api_client.config.client_side_validation && public_association_definition_update_request.nil?
                fail ArgumentError, "Missing the required parameter 'public_association_definition_update_request' when calling DefinitionsApi.update"
              end
              # resource path
              local_var_path = '/crm/v4/associations/{fromObjectType}/{toObjectType}/labels'.sub('{' + 'fromObjectType' + '}', CGI.escape(from_object_type.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['*/*'])
              # HTTP header 'Content-Type'
              content_type = @api_client.select_header_content_type(['application/json'])
              if !content_type.nil?
                  header_params['Content-Type'] = content_type
              end

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:debug_body] || @api_client.object_to_http_body(public_association_definition_update_request)

              # return_type
              return_type = opts[:debug_return_type]

              # auth_names
              auth_names = opts[:debug_auth_names] || ['oauth2']

              new_options = opts.merge(
                :operation => :"DefinitionsApi.update",
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: DefinitionsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
          end
        end
      end
    end
  end
end
