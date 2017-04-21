# ChangeAmountInIngredient is responsible for allowing an amount of an
# ingredient to be added
class ChangeAmountInIngredient < ActiveRecord::Migration
  def change
    change_column :ingredients, :amount, :string
  end
end
