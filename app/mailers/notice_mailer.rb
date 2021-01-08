class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.greeting.subject
  #
  def greeting(user)
    @greeting = "Hi"
    @user = user
    mail( :to => @user.email,
          :subject => 'Welcome JP online!!' )
  end

end
