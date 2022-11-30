class SavedUserTip < ApplicationRecord
  belongs_to :usertip
  belongs_to :user
end
