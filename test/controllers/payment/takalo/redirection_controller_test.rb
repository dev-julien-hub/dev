require 'test_helper'

class Payment::Takalo::RedirectionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get payment_takalo_redirection_index_url
    assert_response :success
  end

end
