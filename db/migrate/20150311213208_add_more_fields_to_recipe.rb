# AddMoreFieldsToRecipe is responsible for adding cooking time, directions
# and serving size to each recipe
class AddMoreFieldsToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :cooking_time, :string
    add_column :recipes, :directions, :text, limit: 5000
    add_column :recipes, :serves, :integer
  end
end
