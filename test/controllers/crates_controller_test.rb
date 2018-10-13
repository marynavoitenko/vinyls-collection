require 'test_helper'

class CratesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crates_index_url
    assert_response :success
  end

  test "should get show" do
    get crates_show_url
    assert_response :success
  end

end
