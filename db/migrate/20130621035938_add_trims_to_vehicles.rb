class AddTrimsToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :trims, :string
  end
end
