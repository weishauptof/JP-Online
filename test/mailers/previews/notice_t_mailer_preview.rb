# Preview all emails at http://localhost:3000/rails/mailers/notice_t_mailer
class NoticeTMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notice_t_mailer/trial_booking
  def trial_booking
    NoticeTMailer.trial_booking
  end

end
