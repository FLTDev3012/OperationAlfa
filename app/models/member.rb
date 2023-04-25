class Member < ApplicationRecord
  has_one_attached :photo
  validates :nom, presence: true, length: { minimum: 3, maximum: 20, message: "( 3 caractères minimum, 20 max )" }
  validates :prenom, presence: true, length: { minimum: 3, maximum: 20, message: "( 3 caractères minimum, 20 max )" }
  validates :job, presence: true, length: { minimum: 2, maximum: 20, message: "( 3 caractères minimum, 20 max )" }
  validates :photo, presence: true
end
