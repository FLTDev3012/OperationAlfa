class CreateVehicules < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicules do |t|
      t.string :marque
      t.string :modele

      t.timestamps
    end
  end
end
