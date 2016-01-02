class RemovePmIdFromProjects < ActiveRecord::Migration
  def change
    change_table :projects do |t|
    t.remove :pm_id
    end
  end
end
