require 'test_helper'

class Dashboard::ContrepartieControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dashboard_contrepartie_new_url
    assert_response :success
  end

  test "should get show" do
    get dashboard_contrepartie_show_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_contrepartie_edit_url
    assert_response :success
  end

end
