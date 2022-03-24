require "test_helper"

class ProvincesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    create(:province)

    get root_url
    assert_response :success

    assert_select "a", "Connaught"
  end

  test "should get show" do
    create(:province)

    get province_url("connaught")
    assert_response :success

    assert_select "h1", "Connaught"
  end
end
