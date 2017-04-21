def path_to(page_name)
  case page_name
  when "Home"
    root_path
  when "Add New Recipe"
    new_recipe_path
  when "Search by Ingredients"
    ingredient_search_path
  when "Cuisine"
    cuisine_search_path
  when "Show Recipe"
    recipe_path(Recipe.last)
  when "Add a Response"
    new_response_path(Recipe.first)
  when "Edit Response"
    edit_response_path(Response.first)
  end
end