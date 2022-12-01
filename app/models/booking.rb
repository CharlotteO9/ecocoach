class Booking < ApplicationRecord
  belongs_to :challenge
  belongs_to :user
  has_many :usertips, dependent: :destroy
  validates :goal, presence: true
end
