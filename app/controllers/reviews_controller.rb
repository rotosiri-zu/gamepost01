class ReviewsController < ApplicationController

  def new
    @reviews = Review.new
  end
  
  def create
    @product = Review.create(create_params)
    redirect_to controller: :games, action: :index
  end

  private
  def create_params
    params.require(:review).permit(:nickname, :rate, :review).merge(product_id: params[:product_id])
  end
end
