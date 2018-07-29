class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :post_id
      t.string :comment

      t.timestamps
    end
  end
end
