# frozen_string_literal: true

module PropellerAds
  
  class ResourceCollection < Resource
    include Enumerable

    attr_reader :options
    
    def initialize(client, data, options={})
      data = {} unless data.is_a?(Hash)

      @client = client

      
    end
  end
end
