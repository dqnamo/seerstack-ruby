# frozen_string_literal: true

module Seerstack
  module Models
    # @see Seerstack::Resources::Events#capture
    class EventCaptureParams < Seerstack::Internal::Type::BaseModel
      extend Seerstack::Internal::Type::RequestParameters::Converter
      include Seerstack::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute data
      #
      #   @return [Hash{Symbol=>Object, nil}, nil]
      optional :data, Seerstack::Internal::Type::HashOf[Seerstack::Internal::Type::Unknown, nil?: true]

      # @!attribute timestamp
      #
      #   @return [Time, nil]
      optional :timestamp, Time

      # @!attribute user_id
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(name:, data: nil, timestamp: nil, user_id: nil, request_options: {})
      #   @param name [String]
      #   @param data [Hash{Symbol=>Object, nil}]
      #   @param timestamp [Time]
      #   @param user_id [String]
      #   @param request_options [Seerstack::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
