# Response is responsible for adding & calculating an average rating for
# a recipe
class Response < ActiveRecord::Base
  belongs_to :recipe
  validates :recipe_id, presence: true
  
  def self.get_average_rating(recipe_id)
     responses = Response.where(recipe_id: recipe_id)
     rating = 0
     responses.each do |response|
        rating = rating + response.rating
     end
     
     if responses.length > 0
        length = responses.length
     else
        length = 1
     end
     
     rating / length
  end
  
  def self.get_responses(recipe_id)
     responses = Response.where(recipe_id: recipe_id)
     responses.sort_by(&:rating).reverse
  end
end
