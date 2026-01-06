# frozen_string_literal: true

require_relative "../test_helper"

class Seerstack::Test::Resources::UsersTest < Seerstack::Test::ResourceTest
  def test_identify_required_params
    skip("Prism tests are disabled")

    response = @seerstack.users.identify(user_id: "user_id")

    assert_pattern do
      response => Seerstack::Models::UserIdentifyResponse
    end

    assert_pattern do
      response => {
        success: Seerstack::Internal::Type::Boolean
      }
    end
  end
end
