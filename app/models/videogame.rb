class Videogame < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :reviews
  has_many :socialgame
  has_many :pcgame
end
