class AddDescriptionToVehicule < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicules, :description, :string
  end
end
