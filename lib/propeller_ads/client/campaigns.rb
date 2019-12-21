# frozen_string_literal: true

module PropellerAds
  class Client
    module Campaigns
      def campaigns(options = {})
        ## CURRENTLY, this may only receive the first page
        response = self.class.get('/adv/campaigns', { query: options })
        response.parsed_response["result"]
      end
    end
  end
end
