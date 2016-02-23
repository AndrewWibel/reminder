class UserMailer < ApplicationMailer
	default :from => "jiminsphess@gmail.com"
	def registration_confirmation(user)
		mail(:to => 'current_user.email', :subject => "Registered")

	end


end
