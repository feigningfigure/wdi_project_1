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
      render "new", :notice => "Incorrect.  Try again."
    end
  end

  def login

  end

  def process_login
    email = params[:email]
    password = params[:password]

    @current_user = User.authenticated?(email, password)

    if @current_user
      redirect_to 'messages/new'
    else
      render text: "Invalid email or password.  Please try again."
    end

  end


  # def delete
  #  @user = User.destroy(params[:id])
  # end

  private

  def user_attributes
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :gravatar_hash)
  end

end
