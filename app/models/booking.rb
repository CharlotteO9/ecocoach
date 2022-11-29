class Booking < ApplicationRecord
  belongs_to :challenge
  belongs_to :user
  has_many :usertips
  validates :goal, presence: true
end
