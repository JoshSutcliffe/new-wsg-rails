class SessionsController < ApplicationController

    # Its inherited from application SessionController


  def login

  end


  def new
    # Serach for user
    user = User.find_by(email: params[:email])
    # Authenticate the password
    if user && user.authenticate(params[:password])
      # create a session
      session[:user_id] = user.id
      # redirect to homepage
      redirect_to '/'
    else
      # stay on the login form for now
      @user = User.find_by(email: params[:email])
      render :new
    end
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
        redirect_to '/'
      end
    else
      # Shows error message on login page
      redirect_to '/sign_up'
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to '/'
  end

end
