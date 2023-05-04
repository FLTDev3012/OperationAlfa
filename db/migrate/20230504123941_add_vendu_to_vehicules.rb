class AddVenduToVehicules < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicules, :vendu, :boolean, default: false
  end
end
