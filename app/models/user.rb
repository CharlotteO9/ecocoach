class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  belongs_to :seniority
  has_many :usertips, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :email, :password, :username, presence: true
  validates :username, :email, uniqueness: true
  validates :password, length: { minimum: 7 }
  # has_one_attached :photo //à voir avec cloudinary
end
