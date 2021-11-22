class UserMailer < Devise::Mailer
  default from: 'financetracker6@gmail.com'
  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'users/mailer' # to make sure that your mailer uses the devise views
  def registration_confirmation(user)
    mail(to: user.email, subject: 'Welcome to the Photo App')
  end

  private
  def confirmation_token
    if self.confirm_token.blank?
        self.confirm_token = SecureRandom.urlsafe_base64.to_s
    end
  end
end