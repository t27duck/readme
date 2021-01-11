require "test_helper"

class Api::V2::ReadmeControllerTest < ActionDispatch::IntegrationTest
  test "should get data for html" do
    get api_v2_readme_path
    assert_response :success
  end

  test "should get data for xml" do
    get api_v2_readme_path(format: :xml)
    assert_response :success
  end

  test "should get data for json" do
    get api_v2_readme_path(format: :json)
    assert_response :success
  end

  test "should get data for pdf" do
    get api_v2_readme_path(format: :pdf)
    assert_response :success
  end
end
