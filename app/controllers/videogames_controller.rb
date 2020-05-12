class VideogamesController < ApplicationController

  def index
    @games = Game.all
    @games = Game.order("created_at DESC").limit(26)
    # @games = Game.find(Like.group(:game_id).order('count(game_id) DESC').limit(5).pluck(:game_id))
  end
end
