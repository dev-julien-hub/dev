require 'test_helper'

class Dashboard::User::ProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_user_project_index_url
    assert_response :success
  end

  test "should get show" do
    get dashboard_user_project_show_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_user_project_edit_url
    assert_response :success
  end

  test "should get create" do
    get dashboard_user_project_create_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_user_project_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dashboard_user_project_destroy_url
    assert_response :success
  end

  test "should get new" do
    get dashboard_user_project_new_url
    assert_response :success
  end

end
