class UserManualHeading < ApplicationRecord
  has_many :user_manual_entries, dependent: :destroy

  validates :content, presence: true
end
