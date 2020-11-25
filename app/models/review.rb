class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant_id, :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, less_than_or_equal_to: 5,
                                     greater_than_or_equal_to: 0 }
end
