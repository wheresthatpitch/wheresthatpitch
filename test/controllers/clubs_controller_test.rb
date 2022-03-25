require "test_helper"

class ClubsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    club = create(:club)

    get club_url(province: club.county.province.slug, county: club.county.slug, club: club.slug)
    assert_response :success
  end
end
