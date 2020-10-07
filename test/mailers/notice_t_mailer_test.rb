require 'test_helper'

class NoticeTMailerTest < ActionMailer::TestCase
  test "trial_booking" do
    mail = NoticeTMailer.trial_booking
    assert_equal "Trial booking", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
