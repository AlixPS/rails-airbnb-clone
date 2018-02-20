class RentalsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  private

  def rental_params
    params.require(:rental).permit(:checkin, :checkout, :accepted)
  end
end
