class GiftsController < ApplicationController
  # @@dilly = nil
 def want
   # @@dilly = request.referrer
   # puts @@dilly 
  
  # if !current_user 
    # redirect_to login_path
  # end
  if !current_user 
    redirect_to login_url, notice: "Please login first!"
  end
  @gift = Gift.find_by(id: params[:id])

  @message = @gift.messages.build
 end

	
  def index
    # if current_user && @@dilly
      # redirect_to @@dilly
    # end
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
    flash.now[:error] = "Gift Deleted!"
    redirect_to user_path(@gift.user)
  end

  def update
    @gift = Gift.find_by(id: params[:id])
    @gift.update_attributes(gift_params)
    redirect_to user_path(@gift.user)
  end

  def create
  	@gift = current_user.gifts.build(gift_params)
  	if @gift.save
  		redirect_to user_path(@gift.user), notice: "Gift Created!"
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