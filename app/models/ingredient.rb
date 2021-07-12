class Ingredient < ApplicationRecord
  belongs_to :food
  belongs_to :dish

  validates :dish_id, uniqueness: { scope: :food_id} 
end
