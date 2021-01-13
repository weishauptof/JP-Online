require 'test_helper'

class FeedbacksControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get feedbacks_test_url
    assert_response :success
  end

end
