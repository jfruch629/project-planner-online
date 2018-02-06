class Project < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :tasks

  validates :name, presence: { message: "Name of project is required"}
  validates_length_of :description, :maximum => 500
end
