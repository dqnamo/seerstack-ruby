# frozen_string_literal: true

require_relative "../test_helper"

class Seerstack::Test::Resources::CaptureTest < Seerstack::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @seerstack.capture.create(name: "name")

    assert_pattern do
      response => Seerstack::Models::CaptureCreateResponse
    end

    assert_pattern do
      response => {
        success: Seerstack::Internal::Type::Boolean
      }
    end
  end
end
