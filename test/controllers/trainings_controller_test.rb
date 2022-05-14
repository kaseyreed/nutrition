require "test_helper"

class TrainingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trainings_index_url
    assert_response :success
  end

  test "should get create" do
    get trainings_create_url
    assert_response :success
  end
end
