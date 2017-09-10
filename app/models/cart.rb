class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy # If cart is deleted, line_item too
end
