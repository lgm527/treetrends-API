class User < ApplicationRecord
  validates_uniqueness_of :username
  has_secure_password
  has_many :stewards
  has_many :trees, through: :stewards
end
