# frozen_string_literal: true

require "test_helper"

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "index should render" do
    get root_path

    assert_response :success
  end
end
