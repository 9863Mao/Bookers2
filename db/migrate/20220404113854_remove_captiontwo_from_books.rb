class RemoveCaptiontwoFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :caption, :string
  end
end
