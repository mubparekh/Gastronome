# ResponsesController used to add comments to recipes
class ResponsesController < ApplicationController
   def new
      @response = Response.new
      @recipe_id = params[:recipe_id]
   end
   
   def create
     @response = Response.new(response_params)
     @recipe = Recipe.find(@response.recipe_id)
     
     if @response.save
       redirect_to recipe_path(@recipe), notice: 'Comment was successfully created.'
     else
       render :new
     end
   end
   
   private
   
   def response_params
     params.require(:response).permit(:comment, :rating, :recipe_id)
   end
end
