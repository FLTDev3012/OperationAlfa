class Vehicule < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :kilometrage, presence: true
  validates :prix, presence: true

end
