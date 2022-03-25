require "test_helper"

class ClubsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    county = create(:county_with_clubs)

    get club_url(province: county.province.slug, county: county.slug, club: county.clubs.first.slug)
    assert_response :success

    assert_select "h1", county.clubs.first.name
  end
end
