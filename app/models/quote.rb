# frozen_string_literal: true

class Quote < ApplicationRecord
  belongs_to :author
  belongs_to :category
  validates :quote, presence: true
end
