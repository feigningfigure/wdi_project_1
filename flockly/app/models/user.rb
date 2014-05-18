class User < ActiveRecord::Base

  # mixes in BCrypt modules, etc to existing model
  include BCrypt

  # validation for unique email
  # validates(:email, { :uniqueness => true})
  validates :email, uniqueness: true

  # setter
  def password= password_input
    # passes the password_input through BCrypt::Password and hashes it
    new_password_hash = Password.create(password_input)
    # new password hash written to database
    self.hashed_password = new_password_hash
    self.hashed_password
  end

  # getter
  def password
    Password.new(self.hashed_password)
  end

  # check's a password
  def check_password(password_input)
    # does the password going in, match the DB pass?
    password_input == self.password
  end

  #
  def self.authenticated?(email_input, password_input)
    # binding.pry
    user = User.find_by_email(email_input)
    if user && user.password == password_input
      puts "Authenticated!"
      return user
    else
      puts "Incorrect password entered."
      return nil
    end
    puts "Email address not found. Sign-up or click 'Try it out'"
    return nil
  end



end
