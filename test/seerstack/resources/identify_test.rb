# frozen_string_literal: true

require_relative "../test_helper"

class Seerstack::Test::Resources::IdentifyTest < Seerstack::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @seerstack.identify.create(user_id: "user_id")

    assert_pattern do
      response => Seerstack::Models::IdentifyCreateResponse
    end

    assert_pattern do
      response => {
        success: Seerstack::Internal::Type::Boolean
      }
    end
  end
end
