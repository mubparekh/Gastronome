# ChangeDescriptionInRecipes is responsible for changing descriptions
# of a recipe
class ChangeDescriptionInRecipes < ActiveRecord::Migration
  def change
    change_column :recipes, :description, :text
  end
end
