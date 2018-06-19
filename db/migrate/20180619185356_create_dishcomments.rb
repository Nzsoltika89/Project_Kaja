class CreateDishcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :dishcomments do |t|
      t.integer :user_id
      t.integer :dish_id
      t.string :texofcom

      t.timestamps
    end
  end
end
