# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "seerstack/version"
require_relative "seerstack/internal/util"
require_relative "seerstack/internal/type/converter"
require_relative "seerstack/internal/type/unknown"
require_relative "seerstack/internal/type/boolean"
require_relative "seerstack/internal/type/file_input"
require_relative "seerstack/internal/type/enum"
require_relative "seerstack/internal/type/union"
require_relative "seerstack/internal/type/array_of"
require_relative "seerstack/internal/type/hash_of"
require_relative "seerstack/internal/type/base_model"
require_relative "seerstack/internal/type/base_page"
require_relative "seerstack/internal/type/request_parameters"
require_relative "seerstack/internal"
require_relative "seerstack/request_options"
require_relative "seerstack/file_part"
require_relative "seerstack/errors"
require_relative "seerstack/internal/transport/base_client"
require_relative "seerstack/internal/transport/pooled_net_requester"
require_relative "seerstack/client"
require_relative "seerstack/models/event_capture_params"
require_relative "seerstack/models/event_capture_response"
require_relative "seerstack/models/user_identify_params"
require_relative "seerstack/models/user_identify_response"
require_relative "seerstack/models"
require_relative "seerstack/resources/events"
require_relative "seerstack/resources/users"
