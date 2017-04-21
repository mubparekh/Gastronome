# Ingredient tags ingredients to respective recipes
class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  validates :recipe, presence: true
end
