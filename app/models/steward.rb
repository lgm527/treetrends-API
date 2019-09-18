class Steward < ApplicationRecord
  validates_uniqueness_of :tree_id, scope: [:user_id]
  belongs_to :user
  belongs_to :tree
end
