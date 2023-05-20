class Book < ApplicationRecord
  belongs_to :subject
  belongs_to :author
  belongs_to :publisher

  validates_presence_of :name, :author, :publisher
  validates_uniqueness_of :name
  validates_numericality_of :publish_year
  validates_numericality_of :price
  validate :year_up_to_present

  def year_up_to_present
    errors.add(:field_name, 'Year must not be in the future') if publish_year > Time.now.year
  end
end
