class Changecolumnname < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :category_id, :integer
    add_column :posts, :category, :integer
  end
end
