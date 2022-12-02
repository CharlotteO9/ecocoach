class Usertip < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  validates :name, :description, presence: true
  include PgSearch::Model

  pg_search_scope :usertips_search,
  against: [ :name, :description ]
end
