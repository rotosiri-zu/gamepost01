class Game < ApplicationRecord
  mount_uploader :image, ImagesUploader
  belongs_to :user
  has_many :review
  validates :image, :name, :platform, :genre, :text, presence: true
end
