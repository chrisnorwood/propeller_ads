# frozen_string_literal: true

require "propeller_ads/client/connection"
require "propeller_ads/client/campaigns"
require "propeller_ads/client/collections"

module PropellerAds
  # PropellerAds API Client
  class Client
    include HTTParty
    include PropellerAds::Client::Connection
    include PropellerAds::Client::Campaigns
    include PropellerAds::Client::Collections

    base_uri 'https://ssp-api.propellerads.com/v5'
    format :json

    def initialize(access_token=nil)
      @access_token = access_token || ENV['PROPELLER_ADS_ACCESS_TOKEN']
      self.class.default_options.merge!(headers: { 'Authorization' => "Bearer #{@access_token}" })
    end
  end
end
