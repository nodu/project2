class UsersController < ApplicationController
  before_action :is_authenticated?
  
  def show
    @user = User.find_by(id: params[:id])

  end
end
