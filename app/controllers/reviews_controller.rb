class ReviewsController < ApplicationController

  def new
    @games = Game.find(params[:id])
    @reviews = Review.new
  end
  
  def create
    Review.create(create_params)
    redirect_to controller: :games, action: :index
  end

  private
  def create_params
    params.require(:review).permit(:nickname, :rate, :review).merge(game_id: params[:game_id])
  end

end
