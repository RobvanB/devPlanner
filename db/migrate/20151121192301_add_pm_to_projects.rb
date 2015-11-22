class AddPmToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :pm, :string
    add_index :projects, :pm
  end
end
