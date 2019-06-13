require 'test_helper'

class RootsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get say" do
    get :say
    assert_response :success
  end

  test "should get hi_joe" do
    get :hi_joe
    assert_response :success
  end

end
