class Project < ActiveRecord::Base
  has_many :tasks, foreign_key: :project
  validates :name, presence: true
end
