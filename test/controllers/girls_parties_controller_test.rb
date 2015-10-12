require 'test_helper'

class GirlsPartiesControllerTest < ActionController::TestCase
  setup do
    @girls_party = girls_parties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:girls_parties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create girls_party" do
    assert_difference('GirlsParty.count') do
      post :create, girls_party: { date: @girls_party.date, rsvp: @girls_party.rsvp, venue: @girls_party.venue }
    end

    assert_redirected_to girls_party_path(assigns(:girls_party))
  end

  test "should show girls_party" do
    get :show, id: @girls_party
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @girls_party
    assert_response :success
  end

  test "should update girls_party" do
    patch :update, id: @girls_party, girls_party: { date: @girls_party.date, rsvp: @girls_party.rsvp, venue: @girls_party.venue }
    assert_redirected_to girls_party_path(assigns(:girls_party))
  end

  test "should destroy girls_party" do
    assert_difference('GirlsParty.count', -1) do
      delete :destroy, id: @girls_party
    end

    assert_redirected_to girls_parties_path
  end
end
