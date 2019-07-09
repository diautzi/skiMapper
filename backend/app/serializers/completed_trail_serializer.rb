class CompletedTrailSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :trail_id, :trail_name, :trail_image, :trail_length, :trail_difficulty
  belongs_to :user
  belongs_to :trail
end

# t.string :trail_name
# t.string :trail_image
# t.string :trail_location
# t.integer :trail_length
# t.string :trail_difficulty
