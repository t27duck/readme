# frozen_string_literal: true

require "test_helper"

class UserManualHeadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_manual_heading = user_manual_headings(:one)
    login_user
  end

  test "should get index" do
    get user_manual_headings_url

    assert_response :success
  end

  test "should get new" do
    get new_user_manual_heading_url

    assert_response :success
  end

  test "should create user_manual_heading" do
    assert_difference("UserManualHeading.count") do
      post user_manual_headings_url, params: { user_manual_heading: { content: @user_manual_heading.content } }
    end

    assert_redirected_to user_manual_heading_url(UserManualHeading.last)
  end

  test "should show user_manual_heading" do
    get user_manual_heading_url(@user_manual_heading)

    assert_response :success
  end

  test "should get edit" do
    get edit_user_manual_heading_url(@user_manual_heading)

    assert_response :success
  end

  test "should update user_manual_heading" do
    patch user_manual_heading_url(@user_manual_heading),
          params: { user_manual_heading: { content: @user_manual_heading.content } }

    assert_redirected_to user_manual_heading_url(@user_manual_heading)
  end

  test "should destroy user_manual_heading" do
    assert_difference("UserManualHeading.count", -1) do
      delete user_manual_heading_url(@user_manual_heading)
    end

    assert_redirected_to user_manual_headings_url
  end
end
