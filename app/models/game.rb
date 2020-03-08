class Game < ApplicationRecord
  mount_uploader :image, ImagesUploader
  
  belongs_to :user
  validates :image, :name, :platform, :genre, :text, presence: true
end
