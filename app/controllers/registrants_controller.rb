# json api

class RegistrantsController < ApplicationController
	def index
		# render json: Registrant.all.entries
		@registrants = Registrant.all.entries
		# http://localhost:3000/registrants
	end


	def show
		# render json: Registrant.find_by(id: params[:id])
		@registrant = Registrant.find_by(id: params[:id])
		# http://localhost:3000/registrants/rsCmp9mNbv_D8laFIeGUNA

	end
	
	def new
		@registrant = Registrant.new
	end
	
	def edit
		@registrant = Registrant.find_by(id: params[:id])
		

	end



	def update
		registrant= Registrant.find_by(id: params[:id])
		# ?????
		if registrant.update_attributes( registrant_params)
			head :no_content
		else
			render json: registrant.errors, status: :unprocesable_entity
		end
	end

	def create
		# registrant = Registrant.create(params[:registrant])  # don't have to save a create, it's automatic
		
		registrant = Registrant.create(registrant_params)

		if registranthead :created
		else
			render json: registrant.errors, status: :unprocesable_entity
		end

	end

	def destroy # delete?
		Registrant.find_by(id: params[:id]).destroy
		# head :no_content #typical response for json destroyed
		redirect_to registrant_url
	end

	private
	def registrant_params
		params.require(:registrant).permit(
			:email, 
			:expires_at
			)
			
		end	
end
