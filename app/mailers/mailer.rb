class Mailer < ActionMailer::Base
  default :to => "admin@bostonrb.org"

  def proposal(sender, custom_body)
    @custom_body = custom_body
    mail :from => sender, :subject => "[Boston.rb] Proposal"
  end
end
