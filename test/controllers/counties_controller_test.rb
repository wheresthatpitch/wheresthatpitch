require "test_helper"

class CountiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    create(:county)

    get province_county_url(province: "connaught", county: "leitrim")
    assert_response :success

    assert_select "h1", "Leitrim"
  end
end
