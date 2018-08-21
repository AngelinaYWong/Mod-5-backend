class User < ApplicationRecord
  has_many :boards
  validates :username, uniqueness: true
  has_secure_password


  


end
