class AddReservationToVoitures < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicules, :reservation, :boolean, :default => false
  end
end
