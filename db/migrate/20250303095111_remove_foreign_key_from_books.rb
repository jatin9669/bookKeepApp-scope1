class RemoveForeignKeyFromBooks < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :books, :users
    
  end
end
