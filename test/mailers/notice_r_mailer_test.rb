require 'test_helper'

class NoticeRMailerTest < ActionMailer::TestCase
  test "regular_booking" do
    mail = NoticeRMailer.regular_booking
    assert_equal "Regular booking", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
