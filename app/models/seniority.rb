class Seniority < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :challenges, dependent: :destroy
  validates :name, presence: true

  def next
    Seniority.where(ranking: self.ranking + 1).first
  end
end
