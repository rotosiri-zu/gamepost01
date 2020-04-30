class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :games
  has_many :reviews
  has_many :pcgames
  has_many :videogames
  has_many :socialgames
  validates :nickname, :email, :password, :password_confirmation, presence: true
end
