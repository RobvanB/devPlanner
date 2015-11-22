class ChangeolumnProjectsPmToPmId < ActiveRecord::Migration
  def change
    rename_column :projects, :pm, :pm_id
  end
end
