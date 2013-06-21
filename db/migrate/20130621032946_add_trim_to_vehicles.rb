class AddTrimToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :trim, :string
  end
end
