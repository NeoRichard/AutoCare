class RenameModelYearsTrimsToTrims < ActiveRecord::Migration
  def change
    rename_column :vehicles, :model_years_trims, :trims
  end
end
