class Image < ApplicationRecord
  belongs_to :posts, optional: true
  has_many :boards, through: :posts
end
