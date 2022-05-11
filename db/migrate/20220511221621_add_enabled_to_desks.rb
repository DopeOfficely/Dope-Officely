class AddEnabledToDesks < ActiveRecord::Migration[7.0]
  def change
    add_column :desks, :enabled, :boolean, default: true
  end
end
