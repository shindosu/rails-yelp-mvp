class Review < ApplicationRecord
  belongs_to :restaurant
  # review.restaurant
  # AR 
  validates :content, presence: true
  validates :rating, presence: true, numericality: {only_integer: true}, inclusion: {in: (0..5).to_a}
end
