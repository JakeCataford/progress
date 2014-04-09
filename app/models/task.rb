class Task < ActiveRecord::Base
  belongs_to :user, foreign_key: :owner
  belongs_to :user, foreign_key: :requester
  belongs_to :project, foreign_key: :project
  has_ancestry
end
