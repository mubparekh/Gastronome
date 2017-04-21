# ChangeDescriptionLimitInRecipes is responsible for  allowing a recipe's
# description to be changed
class ChangeDescriptionLimitInRecipes < ActiveRecord::Migration
  def change
    change_column :recipes, :description, :text, limit: 5000
  end
end
