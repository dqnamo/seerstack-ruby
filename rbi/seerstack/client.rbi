# typed: strong

module Seerstack
  class Client < Seerstack::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # API key authentication via Bearer token
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Seerstack::Resources::Events) }
    attr_reader :events

    sig { returns(Seerstack::Resources::Users) }
    attr_reader :users

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # API key authentication via Bearer token Defaults to `ENV["SEERSTACK_API_KEY"]`
      api_key: ENV["SEERSTACK_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["SEERSTACK_BASE_URL"]`
      base_url: ENV["SEERSTACK_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Seerstack::Client::DEFAULT_MAX_RETRIES,
      timeout: Seerstack::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Seerstack::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Seerstack::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
