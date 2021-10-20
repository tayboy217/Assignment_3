class RemoveNameFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :name, :text
  end
end
