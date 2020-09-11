require 'test_helper'

class Dashboard::AnimationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_animation_index_url
    assert_response :success
  end

  test "should get new" do
    get dashboard_animation_new_url
    assert_response :success
  end

  test "should get create" do
    get dashboard_animation_create_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_animation_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dashboard_animation_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_animation_edit_url
    assert_response :success
  end

  test "should get show" do
    get dashboard_animation_show_url
    assert_response :success
  end

end