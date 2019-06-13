require 'test_helper'

class AppsControllerTest < ActionController::TestCase
  test "should get two-column" do
    get :two-column
    assert_response :success
  end

  test "should get three-column" do
    get :three-column
    assert_response :success
  end

end
