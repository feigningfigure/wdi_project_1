class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to messages_path, :notice => "You have logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    message[:user_id] = nil
    session[:user_id] = nil
    redirect_to login_url, :notice => "You are now logged out."
  end


end