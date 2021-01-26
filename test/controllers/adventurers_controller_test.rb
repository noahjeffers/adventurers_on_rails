require "test_helper"

class AdventurersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adventurers_index_url
    assert_response :success
  end

  test "should get show" do
    get adventurers_show_url
    assert_response :success
  end
end
