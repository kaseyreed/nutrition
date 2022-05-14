require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index:show" do
    get home_index:show_url
    assert_response :success
  end
end
