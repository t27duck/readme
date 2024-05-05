# frozen_string_literal: true

class Link < ApplicationRecord
  validates :url, :link_type, presence: true
end
