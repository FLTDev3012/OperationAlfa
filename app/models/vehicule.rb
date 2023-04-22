class Vehicule < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :kilometrage, presence: true
  validates :prix, presence: true
  validates :marque, presence: true
  validates :modele, presence: true
  validates :enregistrement, presence: true
  validates :taille, presence: true
  validates :puissancech, presence: true
  validates :puissancecv, presence: true
  validates :carburant, presence: true
  validates :boite, presence: true
  validates :carrosserie, presence: true
  validates :couleur, presence: true
  validates :proprietaires, presence: true
  validates :dioxy, presence: true
  validates :portes, presence: true
  validates :places, presence: true
  validates :photo, presence: true
end
