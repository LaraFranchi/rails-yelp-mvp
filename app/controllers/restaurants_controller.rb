class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
