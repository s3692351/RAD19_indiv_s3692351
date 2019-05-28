require 'test_helper'

class LocationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_location_path
    assert_response :success
  end

end
