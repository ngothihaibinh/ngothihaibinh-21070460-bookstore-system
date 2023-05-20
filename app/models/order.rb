class Order < ApplicationRecord
  belongs_to :item
  belongs_to :customer

  validates_presence_of :price
  validates_numericality_of :price
end
