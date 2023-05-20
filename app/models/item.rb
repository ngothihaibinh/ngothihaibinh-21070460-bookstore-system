class Item < ApplicationRecord
  belongs_to :book

  validates_presence_of :price, :quantity
  validates_numericality_of :price, :quantity
end
