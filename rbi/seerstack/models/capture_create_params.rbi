# typed: strong

module Seerstack
  module Models
    class CaptureCreateParams < Seerstack::Internal::Type::BaseModel
      extend Seerstack::Internal::Type::RequestParameters::Converter
      include Seerstack::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Seerstack::CaptureCreateParams, Seerstack::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
      attr_reader :data

      sig { params(data: T::Hash[Symbol, T.nilable(T.anything)]).void }
      attr_writer :data

      sig { returns(T.nilable(Time)) }
      attr_reader :timestamp

      sig { params(timestamp: Time).void }
      attr_writer :timestamp

      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          name: String,
          data: T::Hash[Symbol, T.nilable(T.anything)],
          timestamp: Time,
          user_id: String,
          request_options: Seerstack::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        data: nil,
        timestamp: nil,
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            data: T::Hash[Symbol, T.nilable(T.anything)],
            timestamp: Time,
            user_id: String,
            request_options: Seerstack::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
