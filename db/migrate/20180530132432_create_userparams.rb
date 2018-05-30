class CreateUserparams < ActiveRecord::Migration[5.1]
  def change
    create_table :userparams do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :country
      t.string :city
      t.integer :user_id

      t.timestamps
    end
  end
end
