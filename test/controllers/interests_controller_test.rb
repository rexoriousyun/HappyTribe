require 'test_helper'

class InterestsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
