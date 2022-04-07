class RemoveBodyaFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :Body, :string
  end
end
