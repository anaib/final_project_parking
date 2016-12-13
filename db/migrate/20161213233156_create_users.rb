class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :phone
      t.string :address
      t.string :city
      t.integer :zipcode
      t.string :first_name
      t.string :last_name

      t.timestamps

    end
  end
end
