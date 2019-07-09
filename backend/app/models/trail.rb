class Trail < ApplicationRecord
  has_many :completed_trails
  has_many :users, through: :completed_trails
  has_many :comments
  has_many :users, through: :comments
end
