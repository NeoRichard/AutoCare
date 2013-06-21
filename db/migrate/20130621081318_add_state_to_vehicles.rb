class AddStateToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :state, :integer
  end
   add_attachment :vehicles, :image
end
