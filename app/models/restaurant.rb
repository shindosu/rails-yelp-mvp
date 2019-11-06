class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
#restraunt.reviews bc reviews are holding onto this rest id
# @restaurant
# Review.where(restaurant: @restaurant)
  validates :name, presence: true
  validates :address, presence: true
  validates :adescription, presence: true
  validates :category, presence: true, inclusion: {in: %w{Chinese Italian Japanese French Belgian}}
end
