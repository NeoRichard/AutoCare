class AddMoneyToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :money, :integer, :default => 0
  end
end
