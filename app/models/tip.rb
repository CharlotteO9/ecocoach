class Tip < ApplicationRecord
  has_many :saved_tips, dependent: :destroy
  belongs_to :challenge
  validates :name, :description, presence: true
  include PgSearch::Model

  pg_search_scope :tips_search,
    against: [ :name, :description ],
    associated_against: {
      challenge: [ :category ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
