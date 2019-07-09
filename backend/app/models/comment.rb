class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :trail, optional: true
end
