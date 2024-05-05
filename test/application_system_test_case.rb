# frozen_string_literal: true

require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]

  def sign_in_via_browser
    visit root_path

    fill_in "password", with: TEST_PASSWORD

    click_on "Sign In"

    assert_text "Unread Entries"
  end
end
