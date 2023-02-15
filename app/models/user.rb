class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :friendships
  has_many :friends, through: :friendships
  has_many :habits
  has_many :buddies, through: :habits

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :time_zone, presence: true
  validates :nickname, presence: true, uniqueness: true, length: { minimum: 4 }

  has_one_attached :photo
end
