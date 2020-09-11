require 'test_helper'

class Dashboard::MyProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_my_project_index_url
    assert_response :success
  end

  test "should get show" do
    get dashboard_my_project_show_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_my_project_edit_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_my_project_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dashboard_my_project_destroy_url
    assert_response :success
  end

end
