class TaskComment < ActiveRecord::Base
  require 'debugger'
  belongs_to :task
  belongs_to :user

  validates_presence_of :comment
  validates_presence_of :task_id
  validates_presence_of :user_id
end
