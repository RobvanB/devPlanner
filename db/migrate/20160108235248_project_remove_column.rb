class ProjectRemoveColumn < ActiveRecord::Migration
  def change
    remove_column :projects, :proj_id
  end
end
