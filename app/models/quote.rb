class Quote < ApplicationRecord
  belongs_to :author
  belongs_to :category
end
