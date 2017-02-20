class Project < ApplicationRecord
  belongs_to :admin, class_name: "User", foreign_key: :admin_id
  has_many :users, through: :user_projects
  validates :title, presence: true
  validates :deadline, presence: true
end