# frozen_string_literal: true

module Seerstack
  module Resources
    class Identify
      # Identify a user
      #
      # @overload create(user_id:, attributes: nil, email: nil, name: nil, request_options: {})
      #
      # @param user_id [String]
      # @param attributes [Hash{Symbol=>Object, nil}]
      # @param email [String]
      # @param name [String]
      # @param request_options [Seerstack::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Seerstack::Models::IdentifyCreateResponse]
      #
      # @see Seerstack::Models::IdentifyCreateParams
      def create(params)
        parsed, options = Seerstack::IdentifyCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "identify",
          body: parsed,
          model: Seerstack::Models::IdentifyCreateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Seerstack::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
