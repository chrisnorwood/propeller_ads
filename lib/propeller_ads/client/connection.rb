# frozen_string_literal: true

module PropellerAds
  class Client
    module Connection
      def get(path, options = {})
        request :get, path, { query: options }
      end

      def post(path, options = {})
        request :post, path, { body: options }
      end

      def patch(path, options = {})
        request :patch, path, { body: options }
      end

      def put(path, options = {})
        request :put, path, { body: options }
      end

      def delete(path, options = {})
        request :delete, path, { body: options }
      end

      private

      def request(http_method, path, options)
        response = self.class.send(http_method, path, options)
        data = response.parsed_response
        parse_data(data)
      end

      def parse_data(original_data)
        return unless original_data

        data = original_data["result"] || original_data

        case data
        when Hash then Resource.new(self, data)
        ## THIS NEEDS TO BE MODIFIED TO RESOURCE COLLECTION< AFTER CREATING IT
        when Array then ResourceCollection.new(self, original_data)
        when nil then nil
        else data
        end
      end
    end
  end
end
