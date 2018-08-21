class Image < ApplicationRecord
  belongs_to :boardimages
  has_many :boards, through: :boardimages
end
