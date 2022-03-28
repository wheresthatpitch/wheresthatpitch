require "test_helper"

class Admin::ClubsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_clubs_new_url
    assert_response :success
  end
end
