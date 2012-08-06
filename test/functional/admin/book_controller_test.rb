require 'test_helper'

class Admin::BookControllerTest < ActionController::TestCase
  test "should get action1" do
    get :action1
    assert_response :success
  end

  test "should get action2" do
    get :action2
    assert_response :success
  end

end
