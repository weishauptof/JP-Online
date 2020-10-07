class NoticeRMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_r_mailer.regular_booking.subject
  #
  def regular_booking(lesson)
    @greeting = "Hi"
    @lesson = lesson
    mail( :to => @lesson.user_email, :subject => 'Thank you for booking regular lesson' )
  end
end
