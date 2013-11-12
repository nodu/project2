class UserMailer < ActionMailer::Base
	default from: "RegiftMe <admin@project2.com>"

	def reset_email user, request
		@user = user
		@host = request.protocol + request.host_with_port

		mail to: @user.email, subject: "RegiftMe: Reset your credentials"
	end

	def registration_email registrant, request		
		@registrant = registrant
		@host = request.protocol + request.host_with_port
		
		mail to: @registrant.email, subject: "RegiftMe: Complete your registration"


	end





end


# post fix