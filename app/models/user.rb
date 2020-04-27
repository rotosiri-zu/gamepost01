class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :game
  has_many :reviews
  has_many :pcgame
  has_many :videogame
  has_many :socialgame
  validates :nickname, :email, :password, :password_confirmation, presence: true
end
