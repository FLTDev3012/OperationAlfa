class Piece < ApplicationRecord
  has_one_attached :photo
  has_many_attached :pictures
end
