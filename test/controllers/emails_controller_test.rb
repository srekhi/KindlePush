require 'test_helper'

class EmailsControllerTest < ActionController::TestCase
  test "should get scan" do
    get :scan
    assert_response :success
  end

end
