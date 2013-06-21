class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.integer :vehicle_id
      t.string :component
      t.text :content
      t.boolean :checked

      t.timestamps
    end
  end
end
