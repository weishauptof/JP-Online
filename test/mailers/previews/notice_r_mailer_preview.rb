# Preview all emails at http://localhost:3000/rails/mailers/notice_r_mailer
class NoticeRMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notice_r_mailer/regular_booking
  def regular_booking
    NoticeRMailer.regular_booking
  end

end
