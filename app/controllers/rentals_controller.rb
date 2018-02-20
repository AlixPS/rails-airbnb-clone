class RentalsController < ApplicationController
  before_action :set_car, only: %i[new create]

  def new; end

  def create; end

  def edit; end

  def destroy; end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def rental_params
    params.require(:rental).permit(:checkin, :checkout, :accepted)
  end
end
