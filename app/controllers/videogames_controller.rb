class VideogamesController < ApplicationController

  def index
    @games = Game.all
    @games = Game.order("created_at DESC").limit(26)
  end
end
