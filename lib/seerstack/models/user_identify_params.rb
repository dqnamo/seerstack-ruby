# frozen_string_literal: true

module Seerstack
  module Models
    # @see Seerstack::Resources::Users#identify
    class UserIdentifyParams < Seerstack::Internal::Type::BaseModel
      extend Seerstack::Internal::Type::RequestParameters::Converter
      include Seerstack::Internal::Type::RequestParameters

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!attribute attributes
      #
      #   @return [Hash{Symbol=>Object, nil}, nil]
      optional :attributes, Seerstack::Internal::Type::HashOf[Seerstack::Internal::Type::Unknown, nil?: true]

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(user_id:, attributes: nil, email: nil, name: nil, request_options: {})
      #   @param user_id [String]
      #   @param attributes [Hash{Symbol=>Object, nil}]
      #   @param email [String]
      #   @param name [String]
      #   @param request_options [Seerstack::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
