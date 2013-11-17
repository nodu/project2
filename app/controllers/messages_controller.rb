class MessagesController < ApplicationController
  before_action :is_authenticated?

  def index
    # @sent_messages = Message.find_by(id: params[:id])
    @messages = Message.all.entries
    # @messages = Message.find_by(user_id: params[:user_id])
    # @message = Message.find_by(id: params[:id])

  end

  def show
    @message = Message.find_by(id: params[:id])
    @from_user = User.find_by(id: @message.sent_from)
    # @message = User.find_by(id: @from_user)

    # @message = User.find_by(id: params[:id]).messages

    # @from = User.find_by(id: @message.sent_from)
    # @msg_to = Message.find_by(id: params[:id])
    # @gift = Gift.find_by(id: params[:id])
  end

  def new
    @gift = Gift.find_by(id: params[:gift_id])
    @message = current_user.messages.build
  end

  def create
    @gift = Gift.find_by(id: params[:gift_id])
    @message = @gift.messages.build(message_params)
    @message.sent_from = current_user.id
    @message.user_id = @gift.user.id

    if @message.save
      redirect_to user_path(current_user.id), notice: "Message Sent!"
    else
      puts @message.errors.inspect
      render "new"
    end
  end

  def destroy
    @message = Message.find_by(id: params[:id])
    @message.destroy
    flash.now[:error] = "Message Deleted!"
    redirect_to user_messages_path(current_user.id), error: "Message Deleted!........"
  end

  private

  def message_params
    params.require(:message).permit(:id, :message, :user)
  end

end
