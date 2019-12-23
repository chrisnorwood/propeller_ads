# frozen_string_literal: true

module PropellerAds
  class Client
    module Campaigns
      def campaigns(options = {})
        get("/adv/campaigns", options)
      end

      def update_campaign(campaign_id, body)
        patch("/adv/campaigns/#{campaign_id}", body)
      end

      def campaign(campaign_id)
        get("/adv/campaigns/#{campaign_id}")
      end

      def campaign_rates(campaign_id)
        get("/adv/campaigns/#{campaign_id}/rates")
      end

      def set_campaign_rates(campaign_id, body)
        put("/adv/campaigns/#{campaign_id}/rates", body)
      end

      def campaign_zone_rates(campaign_id)
        get("/adv/campaigns/#{campaign_id}/zone_rates")
      end

      def set_campaign_zone_rates(campaign_id, body)
        put("/adv/campaigns/#{campaign_id}/rates", body)
      end

      def update_campaign_zone_rates(campaign_id, body)
        patch("/adv/campaigns/#{campaign_id}/rates", body)
      end

      def campaign_zone_rate(campaign_id, zone_id)
        get("/adv/campaigns/#{campaign_id}/zone_rates/#{zone_id}")
      end

      def set_campaign_zone_rate(campaign_id, zone_id, body)
        put("/adv/campaigns/#{campaign_id}/zone_rates/#{zone_id}", body)
      end

      def delete_campaign_zone_rate(campaign_id, zone_id)
        delete("/adv/campaigns/#{campaign_id}/zone_rates/#{zone_id}")
      end

      def set_campaign_url(campaign_id, body)
        put("/adv/campaigns/#{campaign_id}/url")
      end

      def campaign_targeting(campaign_id, targeting_type)
        # targeting_type should be either: "include" or "exclude"
        get("/adv/campaigns/#{campaign_id}/targeting/#{targeting_type}")
      end

      def set_campaign_targeting(campaign_id, targeting_type, body)
        # targeting_type should be either: "include" or "exclude"
        put("/adv/campaigns/#{campaign_id}/targeting/#{targeting_type}", body)
      end

      def campaign_allowed_zones(campaign_id)
        get("/adv/campaigns/#{campaign_id}/targeting/include/zone")
      end

      def set_campaign_allowed_zones(campaign_id, body)
        put("/adv/campaigns/#{campaign_id}/targeting/include/zone", body)
      end

      def campaign_forbidden_zones(campaign_id)
        get("/adv/campaigns/#{campaign_id}/targeting/exclude/zone")
      end

      def set_campaign_forbidden_zones(campaign_id, body)
        put("/adv/campaigns/#{campaign_id}/targeting/exclude/zone", body)
      end

      def add_campaign_creatives(campaign_id, body)
        post("/adv/campaigns/#{campaign_id}/creatives", body)
      end

      def start_campaigns(body)
        put("/adv/campaigns/play", body)
      end

      def stop_campaigns(body)
        put("/adv/campaigns/stop", body)
      end
    end
  end
end
