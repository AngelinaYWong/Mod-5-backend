class Board < ApplicationRecord
  belongs_to :user, optional: true
  has_many :posts
  has_many :images, through: :posts
end
