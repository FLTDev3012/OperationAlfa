class AddPictureToPieces < ActiveRecord::Migration[7.0]
  def change
    add_column :pieces, :picture, :string
  end
end
