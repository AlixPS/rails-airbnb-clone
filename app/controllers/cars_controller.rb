class CarsController < ApplicationController
  before_action :set_car, only: [:edit, :destroy, :show, :update]

  def dashboard
    if current_user != nil
      current_user.cars.each { |car| @car = car }
      if @car != nil
        @rentals = @car.rentals
        @reviews = @car.reviews
      end
    end
  end

  def home
    @cars = Car.all
    @users = User.where.not(latitude: nil, longitude: nil)

    @markers = @users.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        infoWindow: { content: render_to_string(partial: "/cars/map_box", locals: { flat: flat }) }
      }
    end
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def show
  end

  def index
    @cars = Car.all
    @users = User.where.not(latitude: nil, longitude: nil)

    @markers = @users.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def destroy
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:brand, :model, :category, :photo, :photo_cache, :portes, :places, :moteur, :boite)
  end

end
