require "test_helper"

class Api::V2::ReadmeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v2_readme_index_url
    assert_response :success
  end
end
