class Pcgame < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :reviews
  has_many :videogames
  has_many :socialgames
end
