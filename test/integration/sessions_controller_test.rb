# frozen_string_literal: true

require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_session_url

    assert_response :success
  end

  test "create should sign in redirect" do
    post session_url, params: { password: TEST_ENV_PASSWORD }

    assert_redirected_to root_url
  end

  test "create should not login if password is wrong" do
    post session_url, params: { password: "xxx" }

    assert_response :unprocessable_entity
  end

  test "destroy logs user out" do
    login_user
    delete session_url

    assert_redirected_to root_url
  end
end
