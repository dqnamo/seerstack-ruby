# typed: strong

module Seerstack
  module Models
    class IdentifyCreateParams < Seerstack::Internal::Type::BaseModel
      extend Seerstack::Internal::Type::RequestParameters::Converter
      include Seerstack::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Seerstack::IdentifyCreateParams, Seerstack::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
      attr_reader :attributes

      sig { params(attributes: T::Hash[Symbol, T.nilable(T.anything)]).void }
      attr_writer :attributes

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          user_id: String,
          attributes: T::Hash[Symbol, T.nilable(T.anything)],
          email: String,
          name: String,
          request_options: Seerstack::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        user_id:,
        attributes: nil,
        email: nil,
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            user_id: String,
            attributes: T::Hash[Symbol, T.nilable(T.anything)],
            email: String,
            name: String,
            request_options: Seerstack::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
