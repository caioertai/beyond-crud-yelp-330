class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to @restaurant
    else
      render :new # render the template(view) for new.html.erb
    end
  end

  private

  # strong params
  def review_params
    params.require(:review).permit(:content)
  end
end
