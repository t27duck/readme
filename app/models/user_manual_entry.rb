# frozen_string_literal: true

class UserManualEntry < ApplicationRecord
  belongs_to :user_manual_heading

  validates :content, presence: true
end
