# frozen_string_literal: true

module Seerstack
  module Resources
    class Capture
      # Capture an event
      #
      # @overload create(name:, data: nil, timestamp: nil, user_id: nil, request_options: {})
      #
      # @param name [String]
      # @param data [Hash{Symbol=>Object, nil}]
      # @param timestamp [Time]
      # @param user_id [String]
      # @param request_options [Seerstack::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Seerstack::Models::CaptureCreateResponse]
      #
      # @see Seerstack::Models::CaptureCreateParams
      def create(params)
        parsed, options = Seerstack::CaptureCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "capture",
          body: parsed,
          model: Seerstack::Models::CaptureCreateResponse,
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
