class UserMailer < ApplicationMailer
	default from: "jameslixin11@gmail.com"

	  def contact_form(email, name, message)
	  @message = message
	    mail(:from => email,
	        :to => 'jameslixin11@gmail.com',
	        :subject => "A new contact form message from #{name}")
	  end
end
