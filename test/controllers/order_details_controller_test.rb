require 'test_helper'

class OrderDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get done" do
    get order_details_done_url
    assert_response :success
  end

end
