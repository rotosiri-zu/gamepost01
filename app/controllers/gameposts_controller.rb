class GamepostsController < ApplicationController
  def index
    @games = Game.all
    @games = Game.order("created_at DESC").page(params[:page]).per(50)
  end

  def new
    @games = Game.new
  end

  def create
    @games = Game.create(name: game_params[:name], image: game_params[:image], text: 
    game_params[:text], platform: game_params[:platform], genre: game_params[:genre], user_id: current_user.id)
  end

  def show
    @games = Game.find(params[:id])
  end

  def destroy
    @games = Game.find(params[:id])
    if @games.user_id == current_user.id
      @games.destroy
    end  
  end

  def edit
    @games = Game.find(params[:id])
  end

  def update
    @games = Game.find(params[:id])
    if @games.user_id == current_user.id
      @games.update(game_params)
    end  
  end

  private

  def game_params
    params.permit(:image, :name, :platform, :genre, :text)
  end

  def move_to_index 
    redirect_to action: :index unless
    user_signed_in?
  end 
end
