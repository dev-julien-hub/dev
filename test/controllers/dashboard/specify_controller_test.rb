require 'test_helper'

class Dashboard::SpecifyControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dashboard_specify_show_url
    assert_response :success
  end

  test "should get index" do
    get dashboard_specify_index_url
    assert_response :success
  end

end
