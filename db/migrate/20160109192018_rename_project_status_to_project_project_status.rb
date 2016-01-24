class RenameProjectStatusToProjectProjectStatus < ActiveRecord::Migration
  def change
    rename_column :projects, :status_id, :project_status_id
  end
end
