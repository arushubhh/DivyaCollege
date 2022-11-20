require "test_helper"

class ComparisonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comparison_index_url
    assert_response :success
  end

  test "should get new" do
    get comparison_new_url
    assert_response :success
  end

  test "should get show" do
    get comparison_show_url
    assert_response :success
  end
end
