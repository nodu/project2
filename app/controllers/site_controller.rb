class SiteController < ApplicationController
	# before_action :is_authenticated?, only: [ :index] 
	# except: [ :privacy, :terms]

	def index
		# redirect_to "http://google.com"
		# render text: "Hello!"
		# render json: {name: "Derk", age: 27}
		# render json: User.first

		@user = User.first
		@users = User.all.entries
	end

	def privacy
	end

	def terms
	end
end
