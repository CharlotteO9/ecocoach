class Challenge < ApplicationRecord
  belongs_to :seniority
  has_many :tips, dependent: :destroy
  has_many :bookings
  validates :name, :description, :category, presence: true
  validates :category, inclusion: { in: %w[Food Transport Energy Purchase Waste] }
end
