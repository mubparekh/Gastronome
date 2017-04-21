# CreateResponses is responsible for creating a table to allow a user to 
# add a response/ comment to a recipe
class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |response|
      response.text :comment, limit: 1000
      response.integer :rating, :recipe_id

      response.timestamps
    end
    add_index :responses, [:recipe_id, :created_at]
  end
end
