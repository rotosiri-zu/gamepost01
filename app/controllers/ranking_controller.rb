class RankingController < ApplicationController
  layout 'review_site'
  before_action :ranking
  def ranking
    product_ids = Review.group(:game_id).order('count_game_id DESC').limit(5).count(:game_id).keys
    @ranking = product_ids.map { |id| Game.find(id) }
  end
end