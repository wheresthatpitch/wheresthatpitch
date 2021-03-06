require "test_helper"

class CountiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    county = create(:county)

    get county_url(province: county.province.slug, county: county.slug)
    assert_response :success

    assert_select "h1", county.name
    assert_select "p", "There are no clubs here yet"
  end

  test "should show the correct count of clubs for a county" do
    county = create(:county_with_clubs)

    get county_url(province: county.province.slug, county: county.slug)
    assert_response :success

    assert_select "h1", county.name
    assert_select "h6", 5
  end
end
