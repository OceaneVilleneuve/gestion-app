class Task < ApplicationRecord
  belongs_to :project
  has_many :users, through: :project
  has_one :task_user, through: :project, source: :users, class_name: "User"
end
