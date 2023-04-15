class CreateCommentaires < ActiveRecord::Migration[7.0]
  def change
    create_table :commentaires do |t|
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :text
      t.string :reponse
      t.date :date_commentaire

      t.timestamps
    end
  end
end
