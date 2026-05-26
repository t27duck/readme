class Entry < ApplicationRecord
  validates :content, presence: true
end
