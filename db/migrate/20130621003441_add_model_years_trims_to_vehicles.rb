class AddModelYearsTrimsToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :model_years_trims, :string
  end
end
