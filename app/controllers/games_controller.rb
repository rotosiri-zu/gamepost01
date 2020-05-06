class GamesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_search
  before_action :set_games, only: %i[show destroy edit update]

  def index
    @games = Game.all
    @games = Game.order("created_at DESC").page(params[:page]).per(26)
  end

  def new
    @games = Game.new
  end

  def create
    @games = Game.create(game_params)
    if @games.save
      flash[:success] = 'アイテムを登録しました'
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @reviews = @games.reviews.order('created_at DESC').limit(15)
    @review = @games.reviews.build
  end

  def destroy
    if @games.user_id == current_user.id
      flash[:danger] = 'アイテムを削除しました'
      @games.destroy
    end  
  end

  def edit
  end

  def update
    if @games.user_id == current_user.id
      @games.update(set_game)
      if @games.save
        flash[:success] = 'アイテムを更新しました'
        redirect_to root_path
      else
        render :edit
      end
    end  
  end

  def set_search
    @search = Game.ransack(params[:q])
    @search_products = @search.result.page(params[:page])
  end

  private

  def game_params
    params.require(:game).permit(:image, :name, :platform, :genre, :text).merge(user_id: current_user.id)
  end

  def set_game
    params.permit(:image, :name, :platform, :genre, :text)
  end

  def set_games
    @games = Game.find(params[:id])
  end


  def move_to_index 
    redirect_to action: :index unless
    user_signed_in?
  end 
end
