class CompletedTrail < ApplicationRecord
  belongs_to :user
  belongs_to :trail, optional: true
end
