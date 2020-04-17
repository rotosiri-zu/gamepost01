class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: :new
  
  def new
    @reviews = Review.new
  end
  
  def create
    @reviews = Review.create(create_params)
    if @reviews.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def create_params
    params.require(:review).permit(:nickname, :rate, :title, :review).merge(game_id: params[:gamepost_id], user_id: current_user.id)
  end
end
