class RenameCustIdInProjects < ActiveRecord::Migration
  def change
    rename_column :projects, :cust_id, :custId
  end
end
