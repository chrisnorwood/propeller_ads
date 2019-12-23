# frozen_string_literal: true

module PropellerAds
  class Client
    module Creatives
      def edit_creative(creative_id, body)
        patch("/adv/creatives/#{creative_id}", body)
      end

      def start_creatives(body)
        put("/adv/creatives/start", body)
      end

      def stop_creatives(body)
        put("/adv/creatives/stop", body)
      end
    end
  end
end
