# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PropellerAds::ResourceCollection do
  let(:client) { PropellerAds::Client.new('some-api-key') }

  context "#data" do
    it "returns empty data for invalid input" do
      resource = PropellerAds::ResourceCollection.new(client, "")
      expect(resource.count).to eql(0)
    end
  
    it "parses collection data correctly" do
      data = {
        people: [{ name: "Steven" }, { name: "Charles" }]
      }
      resource = PropellerAds::ResourceCollection.new(client, data)
      expect(resource.first.name).to eql "Steven"
    end

    it "parses meta data correctly" do
      data = {
        people: [{ name: "Steven" }, { name: "Charles" }],
        meta: {
          info: "some stuff here"
        }
      }
      resource = PropellerAds::Resource.new(client, data)
      expect(resource.data.meta[:info]).to eql "some stuff here"
    end
  end
end
