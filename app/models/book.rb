class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categories
  validates :title, presence: true
  validates_length_of :title, minimum: 1
  validates_numericality_of :rating, only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100
end
