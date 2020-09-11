require 'test_helper'

class Busness::PlanificationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get busness_planification_index_url
    assert_response :success
  end

end
