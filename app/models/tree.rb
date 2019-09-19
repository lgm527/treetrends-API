class Tree < ApplicationRecord
  has_many :stewards, dependent: :destroy
  has_many :users, through: :stewards
end
