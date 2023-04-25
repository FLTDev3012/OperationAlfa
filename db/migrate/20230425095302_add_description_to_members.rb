class AddDescriptionToMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :description, :string
  end
end
