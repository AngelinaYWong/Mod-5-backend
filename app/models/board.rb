class Board < ApplicationRecord
  belongs_to :user, optional: true
  has_many :images, through: :boardimages
end