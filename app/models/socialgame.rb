class Socialgame < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :reviews
  has_many :pcgames
  has_many :videogames
end
