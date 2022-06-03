=begin
#Marketing Events Extension

#These APIs allow you to interact with HubSpot's Marketing Events Extension. It allows you to: * Create, Read or update Marketing Event information in HubSpot * Specify whether a HubSpot contact has registered, attended or cancelled a registration to a Marketing Event. * Specify a URL that can be called to get the details of a Marketing Event. 

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Hubspot::Marketing::Events::BatchInputMarketingEventEmailSubscriber
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BatchInputMarketingEventEmailSubscriber' do
  before do
    # run before each test
    @instance = Hubspot::Marketing::Events::BatchInputMarketingEventEmailSubscriber.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BatchInputMarketingEventEmailSubscriber' do
    it 'should create an instance of BatchInputMarketingEventEmailSubscriber' do
      expect(@instance).to be_instance_of(Hubspot::Marketing::Events::BatchInputMarketingEventEmailSubscriber)
    end
  end
  describe 'test attribute "inputs"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
