class User < ActiveRecord::Base
  has_and_belongs_to_many :projects
  has_many :tasks

  validates :first_name, presence: { message: "First name is required"}
  validates :last_name, presence: { message: "Last name is required"}
end
