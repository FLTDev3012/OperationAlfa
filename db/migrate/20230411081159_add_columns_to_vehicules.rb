class AddColumnsToVehicules < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicules, :enregistrement, :integer
    add_column :vehicules, :kilometrage, :float
    add_column :vehicules, :taille, :float
    add_column :vehicules, :puissancech, :integer
    add_column :vehicules, :puissancecv, :integer
    add_column :vehicules, :carburant, :string
    add_column :vehicules, :boite, :string
    add_column :vehicules, :prix, :float
    add_column :vehicules, :carrosserie, :string
    add_column :vehicules, :couleur, :string
    add_column :vehicules, :proprietaires, :integer
    add_column :vehicules, :dioxy, :float
    add_column :vehicules, :portes, :integer
    add_column :vehicules, :places, :integer
  end
end
