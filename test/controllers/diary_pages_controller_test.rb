require 'test_helper'

class DiaryPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get diary_pages_input_url
    assert_response :success
  end

  test "should get calendar" do
    get diary_pages_calendar_url
    assert_response :success
  end

end
