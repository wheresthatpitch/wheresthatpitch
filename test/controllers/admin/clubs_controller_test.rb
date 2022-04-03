require "test_helper"

class Admin::ClubsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "you have to be logged in to view these pages" do
    get admin_clubs_url
    assert_response :redirect

    assert_redirected_to new_user_session_url
  end

  test "logged in users can view the index page with no clubs" do
    user = create(:user)

    sign_in user

    get admin_clubs_url
    assert_response :success
    assert_select "p", "There are no clubs yet"
  end

  test "logged in users will get a paginated view of many clubs" do
    user = create(:user)
    create_list(:club, 25)

    sign_in user

    get admin_clubs_url
    assert_response :success

    # pagination is set to 20 items, so we should have that many rows in the table
    assert_select "table" do
      assert_select "tbody" do
        assert_select "tr", 20
      end
    end

    # pagination is included at the bottom of the page, and there should be a link to page 2
    assert_select "nav"
    assert_select "span" do
      assert_select "a", "2"
    end
  end

  test "should get new" do
    user = create(:user)

    sign_in user
    get new_admin_club_url
    assert_response :success
  end

  test "logged in users can create a new club" do
    user = create(:user)
    create(:county)

    sign_in user
    parameters = { club: {
      name: Faker::Team.name,
      address: Faker::Address,
      county_id: 1,
      latitude: 53.0,
      longitude: 9
    }}
    post "/admin/clubs",
      params: parameters

    assert_redirected_to admin_clubs_url
    assert 1, Club.count
  end
end
