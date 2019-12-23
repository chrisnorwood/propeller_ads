# frozen_string_literal: true

module PropellerAds
  class Client
    module Statistics
      def statistics(options)
        get("/adv/statistics", options)
      end
    end
  end
end
