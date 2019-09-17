class Tree < ApplicationRecord
  has_many :stewards
  has_many :users, through: :stewards
end
