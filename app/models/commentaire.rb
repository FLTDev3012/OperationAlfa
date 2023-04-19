class Commentaire < ApplicationRecord
  validates :nom, presence: true, length: { minimum: 3, maximum: 20, message: "( 3 caractères minimum )" }
  validates :prenom, presence: true, length: { minimum: 3, maximum: 20, message: "( 3 caractères minimum )" }
  validates :text, presence: true, length: { minimum: 10, maximum: 2000, message: "( 10 caractères minimum )" }
end
