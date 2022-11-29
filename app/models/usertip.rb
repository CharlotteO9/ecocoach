class Usertip < ApplicationRecord
  belongs_to :user, :booking
  validates :name, :description, presence: true
end
