class CreatePieces < ActiveRecord::Migration[7.0]
  def change
    create_table :pieces do |t|
      t.string :nom
      t.string :description
      t.float :prix
      t.string :image_url

      t.timestamps
    end
  end
end
