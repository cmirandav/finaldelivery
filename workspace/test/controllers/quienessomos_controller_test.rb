require 'test_helper'

class QuienessomosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
