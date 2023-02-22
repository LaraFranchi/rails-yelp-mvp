class Restaurant < ApplicationRecord
  CATEGORIES = %w(chinese italian japonese french belgian)
  validates :name, address, categories, presence: true
  validates :categories, inclusion { in: CATEGORIES }


end
