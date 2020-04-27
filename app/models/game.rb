class Game < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :reviews
  has_many :pcgame
  has_many :videogame
  validates :image, :name, :platform, :genre, :text, presence: true
  validates :user_id, presence: true
end
