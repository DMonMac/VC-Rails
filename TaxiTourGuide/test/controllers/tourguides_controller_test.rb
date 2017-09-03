require 'test_helper'

class TourguidesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tourguides_index_url
    assert_response :success
  end

  test "should get show" do
    get tourguides_show_url
    assert_response :success
  end

end
