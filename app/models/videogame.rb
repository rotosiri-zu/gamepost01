class Videogame < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :reviews
  has_many :socialgames
  has_many :pcgames
end
