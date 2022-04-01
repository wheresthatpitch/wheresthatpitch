require "test_helper"

class Admin::ClubsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get new" do
    user = create(:user)

    sign_in user
    get new_admin_club_url
    assert_response :success
  end
end
