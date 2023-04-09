class AddUserToVehicules < ActiveRecord::Migration[7.0]
  def change
    add_reference :vehicules, :user, null: false, foreign_key: true
  end
end
