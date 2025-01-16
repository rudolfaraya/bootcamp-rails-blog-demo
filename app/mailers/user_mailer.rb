class UserMailer < ApplicationMailer
  def welcome_email
    mail(
      to: "test@example.com",
      subject: "Welcome to My App",
      body: "This is a test email sent via MailCatcher."
    )
  end
end
