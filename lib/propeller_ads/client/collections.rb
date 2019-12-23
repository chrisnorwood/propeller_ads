# frozen_string_literal: true

module PropellerAds
  class Client
    module Collections

      def collections
        get("/collections")
      end

      def collection(type)
        get("/collections/#{type}")
      end

      def targeting_countries
        get("/collections/targeting/countries")
      end

      def targeting_time_tables
        get("/collections/targeting/time_table")
      end

      def targeting_os_versions
        get("/collections/targeting/os_version")
      end

      def targeting_os_types
        get("/collections/targeting/os_type")
      end

      def targeting_os
        get("/collections/targeting/os")
      end

      def targeting_device_types
        get("/collections/targeting/device_type")
      end

      def targeting_devices
        get("/collections/targeting/device")
      end

      def targeting_browsers
        get("/collections/targeting/browser")
      end

      def targeting_zones
        get("/collections/targeting/zone")
      end

      def targeting_connections
        get("/collections/targeting/connection")
      end

      def targeting_mobile_isps
        get("/collections/targeting/mobile_isp")
      end

      def targeting_proxies
        get("/collections/targeting/proxy")
      end

      def targeting_languages
        get("/collections/targeting/language")
      end

      def targeting_audiences
        get("/collections/targeting/audience")
      end
    end
  end
end
