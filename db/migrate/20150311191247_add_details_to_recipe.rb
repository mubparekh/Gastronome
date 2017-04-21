# AddDetailsToRecipe is responsible for adding name, description, and cuisine_type
# to a recipe
class AddDetailsToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :name, :string
    add_column :recipes, :description, :string
    add_column :recipes, :cuisine_type, :string
  end
end
