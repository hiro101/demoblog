class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :categories
    drop_table :comments
  end
end
