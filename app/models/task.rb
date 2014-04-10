class Task < ActiveRecord::Base
  belongs_to :owner, class_name: 'User', foreign_key: :owner
  belongs_to :requester, class_name: 'User', foreign_key: :requester
  belongs_to :project, foreign_key: :project
  has_ancestry
end
