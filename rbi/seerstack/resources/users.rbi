# typed: strong

module Seerstack
  module Resources
    class Users
      # Identify a user
      sig do
        params(
          user_id: String,
          attributes: T::Hash[Symbol, T.nilable(T.anything)],
          email: String,
          name: String,
          request_options: Seerstack::RequestOptions::OrHash
        ).returns(Seerstack::Models::UserIdentifyResponse)
      end
      def identify(
        user_id:,
        attributes: nil,
        email: nil,
        name: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Seerstack::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
