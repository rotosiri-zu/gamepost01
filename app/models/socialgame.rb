class Socialgame < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :reviews
  has_many :pcgame
  has_many :videogame
end
