class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :trail_id, :content, :pic_url, :created_at
  belongs_to :trail
  belongs_to :user
end
