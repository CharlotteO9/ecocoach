class Tip < ApplicationRecord
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
