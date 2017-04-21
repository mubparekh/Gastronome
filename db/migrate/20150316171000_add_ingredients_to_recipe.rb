# AddIngredientsToRecipe is responsible for adding ingredients to a recipe
class AddIngredientsToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :ingredients, :string
  end
end