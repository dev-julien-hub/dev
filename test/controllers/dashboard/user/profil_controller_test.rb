require 'test_helper'

class Dashboard::User::ProfilControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_user_profil_index_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_user_profil_edit_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_user_profil_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dashboard_user_profil_destroy_url
    assert_response :success
  end

end
