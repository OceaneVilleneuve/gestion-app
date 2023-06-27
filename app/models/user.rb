class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_one_attached :avatar, optionnal: true
  has_many :user_projects
  has_many :projects, through: :user_projects
  # validation #
  validates :first_name, :last_name, presence: true
  has_many :tasks_as_task_user, through: :project, source: :tasks, class_name: "Task"

end
