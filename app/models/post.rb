class Post < ApplicationRecord
  belongs_to :board
  belongs_to :image
end
