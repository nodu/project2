class GiftsController < ApplicationController
	

	
  def index
    @gifts = Gift.all
  end
  
  def show
    @gift = Gift.find_by(id: params[:id])

    # .find_by(id: params[:id])
    # render json: @person #skips the view, and just renders out the json
  end

  def new
  	@gift = current_user.gifts.build
  	@gift.avatars.build
  end

  def edit
  	@gift = Gift.find_by(id: params[:id])
  	# @gift.avatars.build
  end

  def destroy
    @gift = Gift.find_by(id: params[:id])
    @gift.destroy
    redirect_to gifts_url
  end

  def update
    @gift = Gift.find_by(id: params[:id])
    @gift.update_attributes(gift_params)
    redirect_to gifts_url(@gift) 
  end

  def create
  	@gift = current_user.gifts.build(gift_params)
  	if @gift.save
  		redirect_to gifts_path
  	else
  		puts @gift.errors.inspect
      render "new"
    end
  end

  private

  def gift_params
  	params.require(:gift).permit([:id, :category, :title, :value, :description, {avatars_attributes: [:id, :image]}])
  end


end

# def show
# 		@person = Person.find_by(id: params[:id])
# 		# render json: @person #skips the view, and just renders out the json
# 	end