class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new
  end

  def new
    @restaurant = Restaurant.new(restos_params)
    @restos.save
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restos_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
