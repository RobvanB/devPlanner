class AddTaskStatusToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :task_status_id, :integer
  end
end
