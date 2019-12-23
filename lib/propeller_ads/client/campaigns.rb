# frozen_string_literal: true

module PropellerAds
  class Client
    module Campaigns
      def campaigns(options = {})
        get("/adv/campaigns", options)
      end

      def campaign(campaign_id)
        get("/adv/campaigns/#{campaign_id}")
      end
    end
  end
end
