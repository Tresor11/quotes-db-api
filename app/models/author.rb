# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :quotes
  validates :name, uniqueness: true, presence: true
end
