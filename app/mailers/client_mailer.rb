class ClientMailer < ApplicationMailer
default from: "hi@clientera.com"

  def engagement_email(user, email)
    @user = user
    @email = email
    mail to: user.email_address, subject: email.subject, from: "\"#{email.from_name}\" <#{email.from_email}>"
  end
end
