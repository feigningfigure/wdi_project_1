class MessagesController < ApplicationController

  def create
    Message.create(message_attributes)
    redirect_to messages_url
  end

  def edit
    @message = Message.find(params[:id])
    render partial: "messageform", locals: { message_local: @message }
  end

  def update
     message = Message.find(params[:id])
     message.update_attributes(message_attributes)
     redirect_to messages_url
  end

  def destroy
    message[:message_id] = nil
    redirect_to "/messages/new", :notice => "You left the flock."
  end

  def show
    @message = Message.find(params[:id])
  end

  def index
    # @messages = Message.order(id: :desc)
    # @user = current_user
    # @message = Message.new
  end






  private

  def message_attributes
    params.require(:message).permit(:summary, :content, :user_id)
  end


end
