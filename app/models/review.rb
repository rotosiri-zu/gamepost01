class Review < ApplicationRecord
  has_many :game
  has_many :user
  validates :nickname, :rate, :review, presence: true
end
