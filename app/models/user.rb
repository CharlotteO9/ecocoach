class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :seniority
  has_many :usertips, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :challenges, through: :bookings
  has_many :saved_tips
  has_many :tips, through: :saved_tips
  has_many :usertips, through: :saved_user_tips

  validates :email, :password, :username, presence: true
  validates :username, :email, uniqueness: true
  validates :password, length: { minimum: 7 }
  # has_one_attached :photo //à voir avec cloudinary
end
