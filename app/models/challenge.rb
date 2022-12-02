class Challenge < ApplicationRecord
  belongs_to :seniority
  has_many :tips, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :usertips, through: :bookings
  validates :name, :description, :category, presence: true
  validates :category, inclusion: { in: %w[Food Transport Energy Purchase Waste] }
end
