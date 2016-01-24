class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  belongs_to :task_status
  has_many   :task_comments
  accepts_nested_attributes_for :task_comments

  validates_presence_of :name
  validates_presence_of :task_status_id

  def dropdownlist
    "#{id} #{name}"
  end
end
