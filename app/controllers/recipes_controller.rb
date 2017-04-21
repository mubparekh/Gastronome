# RecipesController used to create, destroy, search, and add recipes
class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  @ingredients = Ingredient.all

  # GET /recipes
  def index
    @recipes = Recipe.all
    
  end

  # GET /recipes/1
  def show
    id = params[:id] # retrieve project task ID from URI route
    @recipe = Recipe.find(id)
    @rating = @recipe.get_rating
    @responses = @recipe.get_responses
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe, notice: 'Recipe was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'Recipe was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
    redirect_to recipes_url, notice: 'Recipe was successfully destroyed.'
  end
  
  def name_search
     
  end
  
  def ingredient_search
     @ingredients = Ingredient.all
     @recipes = Recipe.all
  end

  def search_cuisine
     @cuisine_types = Recipe.get_cuisine
  end
  
  def cuisine_search
     @cuisine_types = Recipe.get_cuisine
  end
  
  def name_results
    if Rails.env.production?
      @recipes = Recipe.where("name ilike ?",  "%#{params[:name]}%")
    else
      @recipes = Recipe.where("name like ?",  "%#{params[:name]}%")
    end
  end
  
  def ingredient_results
     @ingredients = Ingredient.where("name like ?",  "%#{params[:ingredient]}%")
     @recipes = []
     @ingredients.each do |ingredient|
        @recipes.push(Recipe.find(ingredient.recipe_id))
     end
  end
  
  def cuisine_results
       @recipes = Recipe.where(cuisine_type: params[:type])
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:name, :description, :serving_size, :cooking_time, :directions, :ingredient_list, :cuisine_type)
    end
end
