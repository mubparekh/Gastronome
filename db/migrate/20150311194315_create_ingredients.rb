# CreateIngredients is responsible for creating ingredients on a recipe
class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |ingredient|
      ingredient.string :name
      ingredient.integer :amount
      ingredient.integer :recipe_id

      ingredient.timestamps
    end
  end
end
