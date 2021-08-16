require "test_helper"

class MenbursControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get menburs_new_url
    assert_response :success
  end

  test "should get create" do
    get menburs_create_url
    assert_response :success
  end

  test "should get index" do
    get menburs_index_url
    assert_response :success
  end

  test "should get show" do
    get menburs_show_url
    assert_response :success
  end

  test "should get destroy" do
    get menburs_destroy_url
    assert_response :success
  end
end
