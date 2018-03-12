class UserMailer < ApplicationMailer
  default from: 'teniauskas.kristis@gmail.com'

  def contact_form(_email, _name, message)
  @message = message
    mail(from: email,
         to: 'teniauskas.kristis@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end
