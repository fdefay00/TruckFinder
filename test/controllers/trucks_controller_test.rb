require 'test_helper'

class TrucksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get trucks_new_url
    assert_response :success
  end

end
