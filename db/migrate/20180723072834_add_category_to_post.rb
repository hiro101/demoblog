class AddCategoryToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :category, :string
    remove_column :posts, :category_id, :integer
  end
end
