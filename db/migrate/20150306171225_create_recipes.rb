# CreateRecipes is responsible for creating a table to create a recipe
class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |recipe|
      
      recipe.timestamps
    end
  end
end
