class CarsController < ApplicationController
  before_action :set_car, only: [:edit, :destroy, :show]

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
    @cars = Car.all
  end

  def destroy
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:brand, :model, :category, :user)
  end

end
