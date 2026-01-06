# frozen_string_literal: true

module Seerstack
  module Resources
    class Users
      # Identify a user
      #
      # @overload identify(user_id:, attributes: nil, email: nil, name: nil, request_options: {})
      #
      # @param user_id [String]
      # @param attributes [Hash{Symbol=>Object, nil}]
      # @param email [String]
      # @param name [String]
      # @param request_options [Seerstack::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Seerstack::Models::UserIdentifyResponse]
      #
      # @see Seerstack::Models::UserIdentifyParams
      def identify(params)
        parsed, options = Seerstack::UserIdentifyParams.dump_request(params)
        @client.request(
          method: :post,
          path: "identify",
          body: parsed,
          model: Seerstack::Models::UserIdentifyResponse,
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
