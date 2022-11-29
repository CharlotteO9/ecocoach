class Seniority < ApplicationRecord
  has_many :users
  has_many :challenges, dependent: :destroy
  validates :name, presence: true
end
