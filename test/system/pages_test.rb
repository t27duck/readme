# frozen_string_literal: true

require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  test "User can visit root page" do
    visit root_path

    assert_text "Welcome to the documentation page"
  end

  test "User can view readme" do
    visit api_v2_readme_path

    assert_text "TLDR"

    Entry.all.each do |entry|
      assert_text entry.content
    end

    UserManualHeading.all.each do |heading|
      assert_text heading.content
      heading.user_manual_entries.each do |entry|
        assert_text entry.content
      end
    end
  end
end
