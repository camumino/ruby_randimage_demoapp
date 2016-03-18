require 'test_helper'

class DemoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should post generate" do
    post :generate
    assert_response :success
  end

  test "should render generate" do
    assert_template 'generate'
  end



end
