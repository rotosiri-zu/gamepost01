class GamepostsController < ApplicationController
  before_action :move_to_index, except: %i[index show]

  def index
    @games = Game.all
    @games = Game.order('created_at DESC').page(params[:page]).per(50)
  end

  def new
    @games = Game.new
  end

  def create
    @games = Game.create(game_params)
    if @games.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @games = Game.find(params[:id])
    @reviews = Game.where(params[:id])
    @reviews = Review.order('created_at DESC').limit(10)
  end

  def destroy
    @games = Game.find(params[:id])
    @games.destroy if @games.user_id == current_user.id
  end

  def edit
    @games = Game.find(params[:id])
  end

  def update
    @games = Game.find(params[:id])
    if @games.user_id == current_user.id
      @games.update(set_game)
      if @games.save
        redirect_to root_path
      else
        render :edit
      end
    end
  end

  private

  def game_params
    params.require(:game).permit(:image, :name, :platform, :genre, :text).merge(user_id: current_user.id)
  end

  def set_game
    params.permit(:image, :name, :platform, :genre, :text)
  end

  def move_to_index
    redirect_to action: :index unless
    user_signed_in?
  end
end
