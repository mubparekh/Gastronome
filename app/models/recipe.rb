# Recipe is responsible for returning cuisine types, getting rating,
# getting comments, and handling ingredients
class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :responses

  validates :name, presence: true
  
  def self.get_cuisine
		return ['American', 'Chinese', 'French', 'Greek', 'Indian', 'Italian', 'Japanese', 'Korean', 'Mexican', 'Middle Eastern', 'Thai']
	end
	
   def get_rating
	   Response.get_average_rating(self.id)
   end
   
   def get_responses
      Response.get_responses(self.id)
   end
   
  def ingredient_list
    self.ingredients.map { |ingredient| ingredient.name }.join(", ")
  end

  def ingredient_list=(new_value)
    self.ingredients.destroy_all
    ingredient_names = new_value.split(/,\s+/)
    self.ingredients = ingredient_names.map {|ingredient_name| self.ingredients.build(name: ingredient_name) }
  end
end
