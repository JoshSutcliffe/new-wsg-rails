class UsersController < ApplicationController

  def home
    @stadia = Stadium.all 
  end

  def new
    
  end

  def create
    if logged_in?
      @stadium = Stadium.new
      @stadium.name = params[:name]
      @stadium.city = params[:city]
      @stadium.country = params[:country]
      @stadium.clubs = params[:clubs]
      @stadium.capacity = params[:capacity]
      @stadium.bio = params[:bio]
      if @stadium.save
        redirect to '/'
      else
        render :new
      end

    else
      render :login
    end
  end
end
