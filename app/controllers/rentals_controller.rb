class RentalsController < ApplicationController
  before_action :set_car, only: %i[new create update]

  def new
    @rental = Rental.new
  end

  def create
    @rental      = Rental.new(rental_params)
    @rental.car  = @car
    @rental.user = @car.user

    if @rental.save
      redirect_to @car
    else
      render :new
    end
  end

  def edit; end

  def update
    @rental = Rental.find(params[:id])
    @rental.update(rental_params)
  end

  def destroy; end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def rental_params
    params.require(:rental).permit(:checkin, :checkout, :accepted)
  end
end
