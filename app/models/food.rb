class Food < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_many :ingredients
  has_many :dishes, through: :ingredients
end
