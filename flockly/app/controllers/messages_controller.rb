# class MessagesController < ApplicationController

#   def index
#     @messages = Message.order(id: :desc)
#     @user = current_user
#     @message = Message.new
#   end

#   def show
#     @message = Message.find(params[:id])
#   end

#   def create
#     Message.create(message_attributes)
#   end

#   def delete
#     @message = Message.destroy(params[:id])
#   end

#   private

#   def message_attributes
#     params.require(:message).permit(:summary, :content, :user_id)
#   end


# end
