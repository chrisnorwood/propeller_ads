# frozen_string_literal: true

module PropellerAds
  
  class ResourceCollection < Resource
    include Enumerable

    attr_reader :options
    
    def initialize(client, data, options={})
      data = {} unless data.is_a?(Hash)
      data = data.with_indifferent_access

      @client = client

      meta_data = data.delete(:meta) { Hash.new }

      collection = Array(data.values.first).map do |item|
        Resource.new(client, item)
      end

      # SHOULD ADD LOGIC HERE TO DEAL WITH GRABBING NEXT PAGES via metadata

      @options = options.with_indifferent_access
      @data = OpenStruct.new(meta: meta_data, collection: collection)
    end

    # This each is to be used to collect next pages, when implemented
    def each
      return enum_for(:each) unless block_given?

      @data.collection.each { |item| yield item }
    end
  end
end
