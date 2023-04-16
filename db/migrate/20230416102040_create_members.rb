class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :nom
      t.string :prenom
      t.string :job
      t.string :image_url

      t.timestamps
    end
  end
end
