# frozen_string_literal: true

module Seerstack
  module Resources
    class Events
      # Capture an event
      #
      # @overload capture(name:, data: nil, timestamp: nil, user_id: nil, request_options: {})
      #
      # @param name [String]
      # @param data [Hash{Symbol=>Object, nil}]
      # @param timestamp [Time]
      # @param user_id [String]
      # @param request_options [Seerstack::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Seerstack::Models::EventCaptureResponse]
      #
      # @see Seerstack::Models::EventCaptureParams
      def capture(params)
        parsed, options = Seerstack::EventCaptureParams.dump_request(params)
        @client.request(
          method: :post,
          path: "capture",
          body: parsed,
          model: Seerstack::Models::EventCaptureResponse,
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
