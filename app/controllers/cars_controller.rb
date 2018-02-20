class CarsController < ApplicationController
  before_action :set_car, only: [:edit, :destroy, :show]

  def new
    @car = Car.new
    redirect_to root_path
  end

  def create
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

end
