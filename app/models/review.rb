class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_many :pcgame
  has_many :videogame
  has_many :socialgame
  validates :nickname, :rate, :title, :review, presence: true
end
