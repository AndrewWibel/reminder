class UserMailer < ApplicationMailer
	default :from => "yosamania@gmail.com"
	def registration_confirmation(user)
		mail(:to => 'andrew.wibel@gmail.com', :subject => "Registered")

	end


end
