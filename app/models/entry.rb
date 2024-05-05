# frozen_string_literal: true

class Entry < ApplicationRecord
  validates :content, presence: true
end
