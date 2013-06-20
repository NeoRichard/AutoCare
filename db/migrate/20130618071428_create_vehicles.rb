class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vehicle_type
      t.string :brand
      t.string :vehicle_model
      t.integer :year
      t.integer :user_id
      t.integer :km
      t.integer :fuel

      t.timestamps
    end
  end
end
