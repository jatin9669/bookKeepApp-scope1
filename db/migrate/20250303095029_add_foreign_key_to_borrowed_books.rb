class AddForeignKeyToBorrowedBooks < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :borrowed_books, :users, on_delete: :cascade
    add_foreign_key :borrowed_books, :books, on_delete: :cascade
  end
end
