# frozen_string_literal: true

module PropellerAds

  class Resource
    attr_reader :data
    # relevant for hypermedia APIs
    # attr_reader :rels

    def initialize(client, data)
      data = {} unless data.is_a?(Hash)
      
      @client = client
      data = data.with_indifferent_access
      @data = OpenStruct.new(data)
    end

    # allows for Resource to respond to methods based on the @data attributes
    def method_missing(method_sym, *arguments, &block)
      if @data.respond_to?(method_sym)
        @data.send(method_sym)
      else
        super
      end
    end
  end
end
