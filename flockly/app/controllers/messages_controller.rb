class MessagesController < ApplicationController

  def index
    # @messages = Message.order(id: :desc)
    # @user = current_user
    @message = Message.new
  end


  def create
    # render json: params
    @location = Location.create({
      latitude: Geocoder.coordinates(params[:address])[0],
      longitude: Geocoder.coordinates(params[:address])[1]
      })

    @message = Message.create({
      summary: params[:summary],
      content: params[:content],
      location_id: @location.id,
      user_id: current_user.id
    })
    redirect_to messages_url
  end

  def edit
    @message = Message.find(params[:id])
    render partial: "messageform", locals: { message_local: @message }
  end

  def update
     message = Message.find(params[:address])
     message.update_attributes(message_attributes)
     redirect_to messages_url
  end

  def destroy
    message[:message_id] = nil
    redirect_to :new_message, :notice => "You left the flock."
  end

  def show
    @message = Message.find(params[:id])
  end


  private

  # def message_attributes
  #   params.require(:message).permit(:address, :summary, :content)
  # end


end
