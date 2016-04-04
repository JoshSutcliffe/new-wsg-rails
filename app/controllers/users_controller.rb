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

      @photo = Photo.new
      @photo.name = params[:picture]
      if @stadium.save && @photo.save
        redirect_to '/'
      else
        render :new
      end

    else
      redirect_to '/login'
    end
  end
end
