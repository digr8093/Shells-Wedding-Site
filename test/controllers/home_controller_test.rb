require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get findMore" do
    get :findMore
    assert_response :success
  end

end
