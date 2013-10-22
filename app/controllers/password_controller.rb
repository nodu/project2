class PasswordController < ApplicationController
	
	def update

	end

	def edit
		@code = params[:code]
		# @code = params
		# http://localhost:3000/reset/123?key=hi

	end
end