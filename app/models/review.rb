class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user
  validates :nickname, :rate, :title, :review, presence: true
end
