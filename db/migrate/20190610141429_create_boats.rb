class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.integer :day_price
      t.string :boat_name
      t.string :boat_pic_url
      t.integer :nbr_beds
      t.text :description

      t.timestamps
    end
  end
end
