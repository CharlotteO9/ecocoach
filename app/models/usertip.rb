class Usertip < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  has_many :saved_user_tips, dependent: :destroy
  validates :name, :description, presence: true
  include PgSearch::Model

  pg_search_scope :usertips_search,
  against: [ :name, :description ]
end
