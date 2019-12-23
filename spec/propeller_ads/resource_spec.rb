# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PropellerAds::Resource do
  let(:client) { PropellerAds::Client.new('some-api-key') }

  context "#data" do
    it "returns empty data for invalid input" do
      resource = PropellerAds::Resource.new(client, "")
      expect(resource.data.to_h).to eql({})
    end
  
    it "parses data correctly" do
      data = {
        name: "I am a name"
      }
      resource = PropellerAds::Resource.new(client, data)
      expect(resource.data[:name]).to eql "I am a name"
    end
  
    it "adds getters for data" do
      data = {
        name: "I am a name"
      }
      resource = PropellerAds::Resource.new(client, data)
      expect(resource.data.name).to eql "I am a name"
    end
  end
end
