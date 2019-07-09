class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name, :summary, :difficulty, :start, :starVotes, :Location, :imgSqSmall, :imgSmall, :imgSmallMed, :imgMedium, :length, :ascent, :descent, :high, :low, :longitude, :latitude, :conditionStatus, :conditionDetails, :conditionDate

  has_many :completed_trails
  has_many :users, through: :completed_trails
  has_many :comments
  has_many :users, through: :comments
end
