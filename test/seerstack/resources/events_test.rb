# frozen_string_literal: true

require_relative "../test_helper"

class Seerstack::Test::Resources::EventsTest < Seerstack::Test::ResourceTest
  def test_capture_required_params
    skip("Mock server tests are disabled")

    response = @seerstack.events.capture(name: "name")

    assert_pattern do
      response => Seerstack::Models::EventCaptureResponse
    end

    assert_pattern do
      response => {
        success: Seerstack::Internal::Type::Boolean
      }
    end
  end
end
