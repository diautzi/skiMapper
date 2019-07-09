class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image, :location, :password_digest, :created_at

  has_many :completed_trails
  has_many :trails, through: :completed_trails
  has_many :comments
  has_many :trails, through: :comments
end
