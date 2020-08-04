require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get user_profile" do
    get pages_user_profile_url
    assert_response :success
  end

end
