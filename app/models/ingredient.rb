class Ingredient < ApplicationRecord
  has_many :meals
  has_many :recipes, through: :meals

  # one to many relationship
  # belongs_to :recipe
end
