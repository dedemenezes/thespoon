class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save

    redirect_to restaurants_path # /restaurants
  end

  def edit
    # Retrieve the restaurant
    # display the form
  end

  def update
    # receive the form submission
    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant) # /restaurants/:id
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end


  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # STRONG PARAMS
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
  # params is
  # {
  #   "authenticity_token"=>"bxcW90KfIHKH4f2KuIRkjnr63Xf1dRMAFL7kK+3xKRkXkxs9FdE8stlCMidaRdYdxN/DOcojnXKCAoM7Xw35hA==",
  #   "restaurant"=>{
  #     "name"=>"Gula Gula",
  #     "address"=>"Ipanema",
  #     "admin"=>"true",
  #     "rating"=>"5"
  # }

  # params.require(:restaurant)
  # {
  #   "name"=>"Gula Gula",
  #   "address"=>"Ipanema",
  #   "admin"=>"true",
  #   "rating"=>"5"
  # }

  # params.require(:restaurant).permit(:name, :address, :rating)
  # {
  #   "name"=>"Gula Gula",
  #   "address"=>"Ipanema",
  #   "rating"=>"9"
  # }

end
