class CreatePrivateParkings < ActiveRecord::Migration
  def change
    create_table :private_parkings do |t|
      t.integer :offer_user_id
      t.integer :accept_user_id
      t.date :date
      t.time :time
      t.integer :price
      t.string :address
      t.string :city
      t.integer :zipcode
      t.text :description

      t.timestamps

    end
  end
end
