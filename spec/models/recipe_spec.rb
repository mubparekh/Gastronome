require 'rails_helper'

RSpec.describe Recipe, :type => :model do
  it "is valid with basic attributes" do
    recipe = Recipe.new(name: 'Cake', serving_size: 8, description: 'yummy')
    expect(recipe).to be_valid
  end

  it "allows you to create ingredients through a comma separated list" do
    recipe = Recipe.new(name: 'Cake')
    recipe.ingredient_list = 'eggs, milk, flour'

    expect(recipe.ingredients.length).to eql 3
  end
end
