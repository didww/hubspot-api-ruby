=begin
#Line Items

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::LineItems::PublicObjectApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PublicObjectApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::LineItems::PublicObjectApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PublicObjectApi' do
    it 'should create an instance of PublicObjectApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::LineItems::PublicObjectApi)
    end
  end

  # unit tests for merge
  # Merge two line items with same type
  # @param public_merge_input 
  # @param [Hash] opts the optional parameters
  # @return [SimplePublicObject]
  describe 'merge test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
