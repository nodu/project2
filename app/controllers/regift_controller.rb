class RegiftController < ApplicationController
	
def show
		@regift = Gift.find_by(id: params[:id])

		# .find_by(id: params[:id])
		# render json: @person #skips the view, and just renders out the json
	end


end

# def show
# 		@person = Person.find_by(id: params[:id])
# 		# render json: @person #skips the view, and just renders out the json
# 	end
