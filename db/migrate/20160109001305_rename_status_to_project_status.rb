class RenameStatusToProjectStatus < ActiveRecord::Migration
  def change
    rename_table :project_statuses, :project_statuses
  end
end
