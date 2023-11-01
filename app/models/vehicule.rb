class Vehicule < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many_attached :pictures
  validates :kilometrage, presence: true
  validates :prix, presence: true
  validates :marque, presence: true
  validates :modele, presence: true
  validates :enregistrement, presence: true
  validates :puissancech, presence: true
  validates :puissancecv, presence: true
  validates :carburant, presence: true
  validates :boite, presence: true
  validates :couleur, presence: true
  validates :photo, presence: true
end
