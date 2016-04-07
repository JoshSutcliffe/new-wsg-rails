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
      @stadium.picture = params[:picture]
      @stadium.bio = params[:bio]

      if @stadium.save
        redirect_to '/'
      else
        render :new
      end

    else
      redirect_to '/login'
    end
  end

  def show
    @selected_stadium = Stadium.find(params[:id])
  end

  def edit
    @edit = Stadium.find(params[:id])
  end

  def change

    if logged_in?
      @stadium = Stadium.find(params[:id])
      @stadium.city = params[:city]
      @stadium.country = params[:country]
      @stadium.clubs = params[:clubs]
      @stadium.capacity = params[:capacity]
      @stadium.bio = params[:bio]

      if @stadium.save
        redirect to "/stadium/#{ params[:id] }"
      else
        @edit = Stadium.find(params[:id])
        render :edit
      end
  
    else
      redirect_to '/login'
    end
    
  end
end
