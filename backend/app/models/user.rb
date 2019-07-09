class User < ApplicationRecord
  has_many :completed_trails
  has_many :trails, through: :completed_trails
  has_many :comments
  has_many :trails, through: :comments

  has_secure_password
  # validates :email, uniqueness: true, presence:true
  # validates :name

end
