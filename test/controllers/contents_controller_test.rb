require 'test_helper'

class ContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contents_new_url
    assert_response :success
  end

end
