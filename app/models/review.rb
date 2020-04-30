class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_many :pcgames
  has_many :videogames
  has_many :socialgames
  validates :nickname, :rate, :title, :review, presence: true
end
