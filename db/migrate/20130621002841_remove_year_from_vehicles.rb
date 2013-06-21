class RemoveYearFromVehicles < ActiveRecord::Migration
  def up
    remove_column :vehicles, :year
  end
 
  def down
    add_column :vehicles, :year, :integer
  end
end
