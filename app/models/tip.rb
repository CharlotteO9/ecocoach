class Tip < ApplicationRecord
  belongs_to :challenge
  validates :name, :description, presence: true
end
