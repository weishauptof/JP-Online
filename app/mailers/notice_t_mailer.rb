class NoticeTMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_t_mailer.trial_booking.subject
  #
  def trial_booking(lesson)
    @greeting = "Hi"
    @lesson = lesson
    mail( :to => @lesson.user_email, :subject => 'Thank you for booking trial lesson' )
  end
end
