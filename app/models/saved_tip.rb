class SavedTip < ApplicationRecord
  belongs_to :user
  belongs_to :tip
end
