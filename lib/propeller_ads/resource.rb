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

      # relevant for hypermedia APIs
      # links        = @data.delete(:links)
      # links[:self] = @data.delete(:href) if @data.has_key?(:href)

      # @rels = parse_links(links).with_indifferent_access
    end

    # relevant and used for hypermedia APIs
    # def parse_links(links)
    #   (links || {}).each_with_object({}) do |(relation, value), result|
    #     result[relation] = Relation.new(@client, value["href"])
    #   end
    # end
  end
end
