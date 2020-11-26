class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restos_params)
    if @restaurant.valid?
      @restaurant.save
      redirect_to "/restaurants/#{@restaurant.id}"
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restos_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
