class VideogamesController < ApplicationController

  def index
    @games = Game.all
    @games = Game.order("created_at DESC").limit(26)
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
