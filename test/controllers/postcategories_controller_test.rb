require "test_helper"

class PostcategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get postcategories_create_url
    assert_response :success
  end

  test "should get destroy" do
    get postcategories_destroy_url
    assert_response :success
  end
end
