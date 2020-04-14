class Review < ApplicationRecord
  has_many :game
  has_many :user
  validates :nickname, :rate, :title, :review, presence: true
end
