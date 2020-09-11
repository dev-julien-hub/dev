require 'test_helper'

class Dashboard::UserControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dashboard_user_show_url
    assert_response :success
  end

end
