require 'test_helper'

class Busness::ContributionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get busness_contribution_index_url
    assert_response :success
  end

  test "should get show" do
    get busness_contribution_show_url
    assert_response :success
  end

end
