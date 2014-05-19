class UsersController < ApplicationController

  def new
      # if current_user
      #   redirect_to messages_path
      # end
      @user = User.new
  end



  def create
    @user = User.new(user_attributes)
    if @user.save
      redirect_to login_url, :notice => "Signed up!"
    else
      render "new"
    end
  end



  # def create
  #   user_hash = params[:user]
  #   if user_hash[:password] == user_hash[:password_confirmation]
  #     user = User.create(user_attributes)
  #     if user.valid?
  #       @current_user = user
  #       redirect_to "/users/login"
  #     else
  #       render text: "Email already registered. Please sign in."
  #     end
  #   else
  #     render text: "Passwords did not match.  Please re-enter."
  #   end
  # end

  def login

  end

  def process_login
    email = params[:email]
    password = params[:password]

    @current_user = User.authenticated?(email, password)

    if @current_user
      redirect_to messages_url
    else
      render text: "Invalid email or password.  Please try again."
    end

  end

  # def show
  #   @user = User.find(params[:id])
  # end

  # def delete
  #  @user = User.destroy(params[:id])
  # end

  private

  def user_attributes
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :gravatar_hash, :address)
  end

end
