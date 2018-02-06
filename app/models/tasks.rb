class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

  validates :name, presence: { message: "Name of task is required"}
  validates :project_id, presence: { message: "Please enter a project number"}
  validates_length_of :description, :maximum => 500
end
