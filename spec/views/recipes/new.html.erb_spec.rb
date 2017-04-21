require 'rails_helper'

RSpec.describe "recipes/new", :type => :view do
  before(:each) do
    assign(:recipe, Recipe.new())
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do
    end
  end

  it "contains the necessary fields" do
    render

    rendered.should have_field('recipe_name')
    rendered.should have_field('recipe_description')
    rendered.should have_field('recipe_serving_size')
    rendered.should have_field('recipe_cooking_time')
    rendered.should have_field('recipe_ingredient_list')
    rendered.should have_field('recipe_cuisine_type')
    rendered.should have_field('recipe_directions')
  end

  it "has labels for each field" do
    render

    rendered.should have_selector('label[for=recipe_name]')
    rendered.should have_selector('label[for=recipe_description]')
    rendered.should have_selector('label[for=recipe_serving_size]')
    rendered.should have_selector('label[for=recipe_cooking_time]')
    rendered.should have_selector('label[for=recipe_ingredient_list]')
    rendered.should have_selector('label[for=recipe_cuisine_type]')
    rendered.should have_selector('label[for=recipe_directions]')
  end

  it "has a submit button" do
    render

    rendered.should have_selector('input[type=submit]')
  end

  it "has Home and List links" do
    render

    rendered.should have_link('Home')
    rendered.should have_link('List of Recipes')
  end
end
