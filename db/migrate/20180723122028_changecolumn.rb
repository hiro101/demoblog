class Changecolumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :category, :string
    add_column :posts, :category_id, :integer
  end
end
