require 'test_helper'

class PrivatevisitorsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get privatevisitors_show_url
    assert_response :success
  end

end
