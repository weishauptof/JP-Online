require 'test_helper'

class LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get lessons_about_url
    assert_response :success
  end

end
