class Usertip < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  validates :name, :description, presence: true
end
