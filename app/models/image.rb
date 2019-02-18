class Image < ApplicationRecord
  has_many :posts
  has_many :boards, through: :posts
end
