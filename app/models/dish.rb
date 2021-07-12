class Dish < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  has_many :foods, through: :ingredients
  has_many :ingredients
end
