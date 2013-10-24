class UserMailer < ActionMailer::Base
	default from: "Project2 <admin@project2.com>"

	def reset_email user, request
		@user = user
		@host = request.protocol + request.host_with_port

		mail to: @user.email, subject: "Project2: Reset your credentials"
	end

	def registration_email registrant, request		
		@registrant = registrant
		@host = request.protocol + request.host_with_port
		
		mail to: @registrant.email, subject: "Project2: Complete your registration"


	end





end


# post fix