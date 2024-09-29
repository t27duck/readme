require "test_helper"

class UserManualEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_manual_heading = user_manual_headings(:one)
    @user_manual_entry = @user_manual_heading.user_manual_entries.first
    login_user
  end


  test "should get new" do
    get new_user_manual_heading_user_manual_entry_url(@user_manual_heading)
    assert_response :success
  end

  test "should create user_manual_entry" do
    assert_difference("UserManualEntry.count") do
      post user_manual_heading_user_manual_entries_url(@user_manual_heading),
        params: { user_manual_entry: { content: @user_manual_entry.content }
      }
    end

    assert_redirected_to user_manual_heading_user_manual_entry_url(@user_manual_heading, UserManualEntry.last)
  end

  test "should show user_manual_entry" do
    get user_manual_heading_user_manual_entry_url(@user_manual_heading, @user_manual_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_manual_heading_user_manual_entry_url(@user_manual_heading, @user_manual_entry)
    assert_response :success
  end

  test "should update user_manual_entry" do
    patch user_manual_heading_user_manual_entry_url(@user_manual_heading, @user_manual_entry),
      params: { user_manual_entry: { content: @user_manual_heading.content }
    }
    assert_redirected_to user_manual_heading_user_manual_entry_url(@user_manual_heading, @user_manual_entry)
  end

  test "should destroy user_manual_entry" do
    assert_difference("UserManualEntry.count", -1) do
      delete user_manual_heading_user_manual_entry_url(@user_manual_heading, @user_manual_entry)
    end

    assert_redirected_to user_manual_heading_url(@user_manual_heading)
  end
end
