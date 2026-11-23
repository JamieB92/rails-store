class Review < ApplicationRecord
  belongs_to :product
  validates :name, presence: true
  validates :comment, presence: true
  validates :stars, numericality: { only_integer: true, in: 0..5 }
end
