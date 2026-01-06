# frozen_string_literal: true

module Seerstack
  module Models
    # @see Seerstack::Resources::Events#capture
    class EventCaptureResponse < Seerstack::Internal::Type::BaseModel
      # @!attribute success
      #
      #   @return [Boolean]
      required :success, Seerstack::Internal::Type::Boolean

      # @!method initialize(success:)
      #   @param success [Boolean]
    end
  end
end
