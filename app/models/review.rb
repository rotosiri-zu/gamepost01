class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user
  validates :nickname, :rate, :review, presence: true
end
