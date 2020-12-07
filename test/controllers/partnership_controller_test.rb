require 'test_helper'

class PartnershipControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get partnership_show_url
    assert_response :success
  end

end
