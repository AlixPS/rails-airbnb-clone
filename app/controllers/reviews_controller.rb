class ReviewsController < ApplicationController
  def new
  end
  def create
    @review      = Review.new(reviews_params)
    @car = Rental.find(params[:rental_id]).car
    @review.rental = Rental.find(params[:rental_id])

    if @review.save
      redirect_to @car
    else
      @reviews = @car.reviews
      render "cars/show"
    end
  end

  def reviews_params
    params.require(:review).permit(:description)
  end

end
