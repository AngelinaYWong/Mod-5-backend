class Image < ApplicationRecord
  belongs_to :boardimages, optional: true
  has_many :boards, through: :boardimages
end
