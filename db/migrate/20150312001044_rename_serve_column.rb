# RenameServeColumn is responsible for renaming serves to serving size
class RenameServeColumn < ActiveRecord::Migration
  def change
    rename_column :recipes, :serves, :serving_size
  end
end
