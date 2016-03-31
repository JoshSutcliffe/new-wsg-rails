class SessionsController < ApplicationController

    # Its inherited from application SessionController


  def new

  end


  def sign_up
    
  end

  # Now creating a user
  def create
    @user = User.new
    @user.username = params[:username]
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      user = User.find_by(email: params[:email])
      # When creating an ccount you are automatically logged in below
      if @user.email && user.authenticate(params[:password])
        session[:user_id] = user.id
        # redirect to home page
        redirect to '/'
      end
    else
      # Shows error message on login page
      # erb :create_account
    end
  end
  
end
